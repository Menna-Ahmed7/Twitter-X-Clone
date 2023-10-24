import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignWithButton extends StatelessWidget {
  const SignWithButton({
    super.key,
    required this.type,
    required this.onPressed,
    required this.text,
    required this.padding,
  });
  final Buttons type;
  final Function onPressed;
  final String text;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SignInButton(
        type,
        onPressed: onPressed,
        text: text,
        padding: padding,
        elevation: 8,
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
