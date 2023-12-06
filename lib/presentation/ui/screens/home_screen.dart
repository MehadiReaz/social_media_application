import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(6),
            child: CircleAvatar(
              child: Icon(Icons.face),
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
                  onPressed: () {},
                  icon: Image.asset('assets/icons/notification.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/Chat.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
