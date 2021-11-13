import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileContoller>(
        builder: (controller) => const Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Center(
                child: Text(
                  "PROFILE",
                  style: TextStyle(color: Colors.white),
                ))));
  }
}


