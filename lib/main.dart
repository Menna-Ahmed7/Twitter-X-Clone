import 'package:flutter/material.dart';
import 'package:tweaxy/Views/splash_screen.dart';
import 'package:tweaxy/Views/start_screen.dart';
import 'package:tweaxy/constants.dart';

void main() {
  runApp(const MainMaterialApp());
}

class MainMaterialApp extends StatelessWidget {
  const MainMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        kSplashScreen: (context) => const SplashScreen(),
        kStartScreen: (context) => const StartScreen(),
      },
      initialRoute: kSplashScreen,
    );
  }
}
