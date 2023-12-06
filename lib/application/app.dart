import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_application/presentation/ui/screens/splash_screen/splash_screen_1.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MySocial',
      home: const SplashScreen1(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: const Color(0xFF4478FF),
            minimumSize: const Size(double.infinity, 42),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFF98A2B3),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4478FF),
        ),
        useMaterial3: true,
      ),
    );
  }
}
