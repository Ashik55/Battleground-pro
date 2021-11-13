import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'play_controller.dart';

class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlayContoller>(
        builder: (controller) => const Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Center(
                child: Text(
              "PLAY",
              style: TextStyle(color: Colors.white),
            ))));
  }
}
