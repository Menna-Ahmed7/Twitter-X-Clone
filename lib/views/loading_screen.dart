import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key, required this.asyncCall});
  final bool asyncCall;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      color: Colors.white,
      opacity: 1,
      progressIndicator: const SizedBox(
        height: 65,
        width: 65,
        child: Stack(
          alignment: Alignment.center,
          children: [
            LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [Colors.black]),
            Icon(
              Icons.flutter_dash, //TODO: Put the Logo here
              size: 50,
              color: Colors.black,
            ),
          ],
        ),
      ),
      child: Placeholder(),
      inAsyncCall: asyncCall,
    );
  }
}
