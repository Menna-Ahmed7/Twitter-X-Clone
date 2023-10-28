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
            flex: 3,
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              alignment: Alignment.center,
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 50.0),
                    child: Text(
                      'Happening now',
                      style: TextStyle(
                        fontSize: 68,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 28.0),
                    child: Text(
                      'Join today',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: SignChoose(isDarkMode: isDarkMode),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:70.0),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            'Already Have An Account ?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 350,
                          height: 40,
                          child: OutlinedButton(
                            onPressed: () {},
                            key: const ValueKey('webStartScreenLogin'),
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            child: const Text("Sign In"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
