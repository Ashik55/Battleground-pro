import 'package:battleground_pro/app/ui/component/item_result.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'result_controller.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResultContoller>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            appBar: AppBar(
              elevation: 0,
              title: const Text("Results"),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding:  EdgeInsets.all(Dimens.basePadding),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  ResultItem()
                ],
              ),
            )));
  }
}


