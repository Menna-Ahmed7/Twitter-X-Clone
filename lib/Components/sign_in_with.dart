import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class SignWithButton extends StatelessWidget {
  final ButtonSize size;

  const SignWithButton(
      {super.key,
      required this.type,
      required this.onPressed,
      required this.size});
  final ButtonType type;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SignInButton(
        buttonType: type,
        onPressed: onPressed,
        buttonSize: size,
        elevation: 8,
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
