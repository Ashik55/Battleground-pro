import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopContoller>(
        builder: (controller) => const Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Center(
                child: Text(
                  "SHOP",
                  style: TextStyle(color: Colors.white),
                ))));
  }
}


