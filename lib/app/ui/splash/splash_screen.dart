import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Column(
              children: [
                Spacer(),
                Center(
                  child: Image.asset(
                    'assets/images/app_logo.png',
                    height: 100,
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(
                    "Please Wait",
                    style: TextStyle(color: CustomColors.primaryColorText),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: LinearProgressIndicator(
                    minHeight: 2,
                    color: CustomColors.primaryColorText,
                    backgroundColor: CustomColors.primaryButtonColor,
                  ),
                )
              ],
            )));
  }
}
