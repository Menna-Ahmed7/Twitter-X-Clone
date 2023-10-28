import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tweaxy/Components/sign_choose.dart';

class WebStartScreen extends StatelessWidget {
  const WebStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Happening now',
                style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                'Join today',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 400, child: SignChoose(isDarkMode: isDarkMode),),
            ],
          ))
        ],
      ),
    );
  }
}
