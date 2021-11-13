import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'result_controller.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultContoller>(
        builder: (controller) => const Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Center(
                child: Text(
                  "RESULT",
                  style: TextStyle(color: Colors.white),
                ))));
  }
}


