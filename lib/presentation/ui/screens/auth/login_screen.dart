import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'MySocial',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lobster(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    letterSpacing: 1,
                    color: const Color(0xFF101828),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minWidth: double.infinity,
                  height: 42,
                  color: const Color(0xFF4478FF),
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      // fontFamily: 'Satoshi',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                          color: Color(0xFF4478FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Login or Signup with',
                  style: TextStyle(fontSize: 20),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        minRadius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          isScrollControlled: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          const SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                'This feature has not implemented yet!',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          backgroundColor: Colors.white,
                          enableDrag: true,
                        );
                      },
                      child: CircleAvatar(
                        minRadius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
