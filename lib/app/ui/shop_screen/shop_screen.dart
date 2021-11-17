import 'package:battleground_pro/app/ui/component/item_shop.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'shop_controller.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopContoller>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            appBar: AppBar(
              elevation: 0,
              title: const Text("Store"),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: const EdgeInsets.all(Dimens.basePadding),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: .9),
                  itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(6),
                        child: ShopItem(index),
                      )),
            )));
  }
}
