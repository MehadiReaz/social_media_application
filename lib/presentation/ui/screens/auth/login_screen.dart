import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_application/presentation/ui/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool value = false;
bool _passwordText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                'Enter your Email and Password',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  letterSpacing: .3,
                  color: const Color(0xFF101828),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: const Color(0xFF1D2939),
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Input Email',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: const Color(0xFF1D2939),
                obscureText: _passwordText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  hintText: 'Input Password',
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                        setState(() {
                          _passwordText = !_passwordText;
                        });
                      }),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: value,
                      onChanged: (_) {
                        setState(() {
                          value = !value;
                        });
                      }),
                  const Text('Save Password')
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const HomeScreen());
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
