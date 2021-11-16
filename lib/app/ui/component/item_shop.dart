import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radiusMin),
      child: Container(
        color: CustomColors.primaryButtonColor2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.radiusMin),
                    child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.network(
                          "https://venturebeat.com/wp-content/uploads/2020/05/Garena-Free-Fire.jpg?w=1200&strip=all",
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  Text(
                    "Freefire Tournament",
                    style: TextStyle(
                        color: CustomColors.primaryColorBackground,
                        fontSize: Dimens.title,
                        fontWeight: FontWeight.w600),
                  )


                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Prize",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Per Kill",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Entry Fee",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Version",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Map",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Dimens.titleMinMid),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            "1000",
                            style: TextStyle(
                                color: CustomColors.primaryColorBackground,
                                fontSize: Dimens.titleMid,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          children: const [
                            Icon(
                              Icons.add_to_queue_rounded,
                              color: CustomColors.primaryIconColor,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Spectate",
                                style: TextStyle(
                                    color: CustomColors.primaryColorText),
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
