import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:tweaxy/Components/sign_in_with.dart';
import 'package:tweaxy/Components/start_screen_divider.dart';
import 'package:tweaxy/Components/start_screen_signup_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              const Center(
                child: Text(
                  'See What\'s happening in the world right now.',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SignWithButton(
                        type: isDarkMode ? Buttons.googleDark : Buttons.google,
                        text: 'Continue With Google',
                        onPressed: () {
                          //TODO: implement continue with google logic
                        },
                        padding: const EdgeInsets.symmetric(vertical: 6),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: SignWithButton(
                        type: Buttons.facebookNew,
                        text: 'Continue With Facebook',
                        onPressed: () {
                          //TODO: implement continue with facebook logic
                        },
                        padding: const EdgeInsets.symmetric(vertical: 11),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: SignWithButton(
                        type: Buttons.gitHub,
                        text: 'Continue With Github',
                        onPressed: () {
                          //TODO: implement continue with github logic
                        },
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                    const StartScreenDivider(),
                    StartScreenSignupButton(isDarkMode: isDarkMode)
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account already? ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //TODO: Goto Login Page
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
