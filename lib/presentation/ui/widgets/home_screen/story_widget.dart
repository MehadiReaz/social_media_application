import 'package:flutter/material.dart';

import '../../screens/story_screen.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FullScreenStory(
              imagePath: 'assets/images/IMG_0047.jpg',
              duration: Duration(seconds: 3),
              name: 'Reaz',
            ),
          ),
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: 190,
            child: Card(
              elevation: 1,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Hero(
                        tag: 'imageHero', // Unique tag for the Hero animation
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/my.jpg',
                            width: 128,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
                        top: 4,
                        child: Hero(
                          tag:
                              'avatarHero', // Unique tag for the Hero animation
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.blue,
                                width: 3.0,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/IMG_0047.jpg',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Mehadi',
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
          ),
          // Add more cards
        ],
      ),
    );
  }
}
