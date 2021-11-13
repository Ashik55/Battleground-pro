
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
                body: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Image.asset('assets/images/background.png')),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 200,
                  ),
                ),
              ],
            )));
  }
}
