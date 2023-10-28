import 'package:flutter/material.dart';
import 'package:tweaxy/Views/splash_screen.dart';
import 'package:tweaxy/Views/start_screen.dart';
import 'package:tweaxy/Views/start_screen_web.dart';
import 'package:tweaxy/constants.dart';

void main() {
  runApp(const MainMaterialApp());
}

class MainMaterialApp extends StatelessWidget {
  const MainMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: brightness,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: isDarkMode ? Colors.black : Colors.white,
      ),
      routes: {
        kSplashScreen: (context) => const SplashScreen(),
        kStartScreen: (context) => const StartScreen(),
        kWebStartScreen: (context) => const WebStartScreen(),
      },
      initialRoute: kSplashScreen,
    );
  }
}
