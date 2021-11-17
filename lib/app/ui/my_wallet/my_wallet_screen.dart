import 'package:battleground_pro/app/ui/component/item_ongoing.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/constants.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_wallet_controller.dart';

class MyWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWalletContoller>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            appBar: AppBar(
              elevation: 0,
              title: const Text("My Wallet"),
              backgroundColor: Colors.transparent,
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0$TAKA_SYMBOL",
                      style: (TextStyle(
                          color: CustomColors.primaryColorText,
                          fontSize: Dimens.titleLargeTrippleExtra,
                          fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 3),
                            borderRadius:
                                BorderRadius.circular(Dimens.radiusMin)),
                        child: Text(
                          "Deposited : 0$TAKA_SYMBOL",
                          style: (const TextStyle(
                              color: Colors.green,
                              fontSize: Dimens.title,
                              fontWeight: FontWeight.w600)),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange, width: 3),
                            borderRadius:
                            BorderRadius.circular(Dimens.radiusMin)),
                        child: const Text(
                          "Winning : 0$TAKA_SYMBOL",
                          style: (TextStyle(
                              color: Colors.orange,
                              fontSize: Dimens.title,
                              fontWeight: FontWeight.w600)),
                        )),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.white,
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    controller: controller.tabController,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Add Money',
                      ),
                      Tab(
                        text: 'Withdraw',
                      ),
                      Tab(
                        text: 'Transaction',
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      children: [
                        Container(child: Center(child: Text('people'))),
                        Text('Person'),
                        Text('Person'),
                      ],
                      controller: controller.tabController,
                    ),
                  ),
                ),
              ],
            )));
  }
}
