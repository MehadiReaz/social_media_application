import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_application/presentation/ui/screens/chat_screen.dart';
import 'package:social_media_application/presentation/ui/screens/notification_screen.dart';
import 'package:social_media_application/presentation/ui/widgets/home_screen/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  imagePickerGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }

  imagePickerfromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 190,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return InkWell(
                          onTap: () {
                            imagePickerGallery();
                          },
                          child: myStoryPicker,
                        );
                      } else {
                        return const StoryWidget();
                      }
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget get myStoryPicker {
    return SizedBox(
      height: 190,
      child: Card(
        elevation: 1,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/IMG_0047.jpg',
                    width: 128,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                        color: Colors.black.withOpacity(.3),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        )),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/my.jpg',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Mehadiii',
                style: TextStyle(
                  color: Color(0xFF1D2939),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar get appbar {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/my.jpg',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'MySocial',
        textAlign: TextAlign.center,
        style: GoogleFonts.lobster(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          letterSpacing: 1,
          color: const Color(0xFF101828),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Get.to(() => const NotificationScreen());
              },
              icon: Image.asset('assets/icons/notification.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Get.to(() => const ChatScreen());
              },
              icon: Image.asset('assets/icons/Chat.png'),
            ),
          ),
        ),
      ],
    );
  }
}
