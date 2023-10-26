import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tweaxy/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, kStartScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          width: 100,
          height: 100,
          'assets/images/logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
