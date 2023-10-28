import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
class StartScreenSignupButton extends StatelessWidget {
  const StartScreenSignupButton({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          onPressed: () {
            //TODO: Navigate to signup
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                kIsWeb?Colors.lightBlue:
                  isDarkMode ? Colors.white : Colors.black),
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              )),
          child: Text(
            'Create Account',
            style: TextStyle(
              color: kIsWeb?Colors.white: !isDarkMode ? Colors.white : Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
