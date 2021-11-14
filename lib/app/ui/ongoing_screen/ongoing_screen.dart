import 'package:battleground_pro/app/ui/component/item_ongoing.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ongoing_controller.dart';

class OngoingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OngoingContoller>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Padding(
              padding: const EdgeInsets.all(Dimens.basePadding),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  OnGoingItem()
                ],
              ),
            )));
  }
}
