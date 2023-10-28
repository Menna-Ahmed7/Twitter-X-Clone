import 'package:flutter/material.dart';

class StartScreenDivider extends StatelessWidget {
  const StartScreenDivider({
    super.key,
    required this.isDarkMode,
  });
  final bool isDarkMode;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          indent: 24,
          endIndent: 24,
          color: isDarkMode?Colors.white24: Colors.black26,
          thickness: 1,
        ),
        Container(
          width: 30,
          color: isDarkMode ? Colors.black : Colors.white,
          child: Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: isDarkMode ? Colors.black  : Colors.white,
              color: !isDarkMode ? Colors.black54 : Colors.white70,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
