import 'package:flutter/material.dart';

class WebStartScreen extends StatelessWidget {
  const WebStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Image.asset('assets/images/logo.png'),),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
            ],
          ))
        ],
      ),
    );
  }
}