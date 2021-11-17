import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/constants.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopItem extends StatelessWidget {
  int index;
  ShopItem(this.index);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radiusMin),
      child: Container(
        color: CustomColors.primaryColorBackground2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/icons/ic_uc.png',
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "60",
                    style: TextStyle(
                        color: CustomColors.primaryColorText,
                        fontSize: Dimens.titleLargeExtra,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 35,
                  child: index.isEven? Image.asset(
                    'assets/images/uc_mid.png',
                  ) : Image.asset(
                    'assets/images/uc_large.png',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimens.radiusNone),
                      child: Container(
                        height: 40,
                        color: CustomColors.primaryButtonColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "BDT 130 $TAKA_SYMBOL",
                                style: TextStyle(
                                    color: CustomColors.primaryColorText,
                                    fontSize: Dimens.title,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
