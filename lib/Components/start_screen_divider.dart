import 'package:flutter/material.dart';
class StartScreenDivider extends StatelessWidget {
  const StartScreenDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(
          indent: 24,
          endIndent: 24,
          color: Colors.black26,
          thickness: 1,
        ),
        Container(
          width: 30,
          color: Colors.white,
          child: const Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.white,
              color: Colors.black54,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
