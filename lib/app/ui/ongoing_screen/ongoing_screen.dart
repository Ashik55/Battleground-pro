import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ongoing_controller.dart';

class OngoingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OngoingContoller>(
        builder: (controller) => const Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Center(
                child: Text(
                  "ONGOING",
                  style: TextStyle(color: Colors.white),
                ))));
  }
}


