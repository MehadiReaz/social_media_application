import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.to(const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MySocial',
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(
            fontWeight: FontWeight.w400,
            fontSize: 30,
            letterSpacing: 1,
            color: const Color(0xFF101828),
          ),
        ),
      ),
    );
  }
}
