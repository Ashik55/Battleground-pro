import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/constants.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileContoller>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Padding(
              padding: EdgeInsets.all(Dimens.basePadding),
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage('assets/images/helmet.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Aashiqur Rahman",
                      style: TextStyle(
                          color: CustomColors.primaryColorText,
                          fontSize: Dimens.titleLarge,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.radiusMin),
                    child: Container(
                      color: CustomColors.primaryIconColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                "500$TAKA_SYMBOL",
                                style: TextStyle(
                                    color: CustomColors.primaryColorBackground,
                                    fontSize: Dimens.title,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                "Available Balance",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: Dimens.titleMinMid),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.radiusMin),
                          child: Container(
                            color: CustomColors.primaryIconColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      "500",
                                      style: TextStyle(
                                          color: CustomColors
                                              .primaryColorBackground,
                                          fontSize: Dimens.title,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "Match Played",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: Dimens.titleMinMid),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.radiusMin),
                          child: Container(
                            color: CustomColors.primaryIconColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      "500",
                                      style: TextStyle(
                                          color: CustomColors
                                              .primaryColorBackground,
                                          fontSize: Dimens.title,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "Total Kills",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: Dimens.titleMinMid),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.radiusMin),
                          child: Container(
                            color: CustomColors.primaryIconColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      "500",
                                      style: TextStyle(
                                          color: CustomColors
                                              .primaryColorBackground,
                                          fontSize: Dimens.title,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "Win",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: Dimens.titleMinMid),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.radiusMin),
                    child: Container(
                      color: CustomColors.primaryIconColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 6),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.person_add_alt_1_rounded,
                                      color:
                                          CustomColors.primaryColorBackground),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Refer & Earn",
                                    style: TextStyle(
                                        color:
                                            CustomColors.primaryColorBackground,
                                        fontSize: Dimens.title,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: InkWell(
                                onTap: ()=> controller.editProfileClick(),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.edit,
                                        color:
                                            CustomColors.primaryColorBackground),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                          color:
                                              CustomColors.primaryColorBackground,
                                          fontSize: Dimens.title,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.wallet_membership,
                                      color:
                                          CustomColors.primaryColorBackground),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "My Wallet",
                                    style: TextStyle(
                                        color:
                                            CustomColors.primaryColorBackground,
                                        fontSize: Dimens.title,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.info,
                                      color:
                                          CustomColors.primaryColorBackground),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Support",
                                    style: TextStyle(
                                        color:
                                            CustomColors.primaryColorBackground,
                                        fontSize: Dimens.title,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.share,
                                      color:
                                          CustomColors.primaryColorBackground),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        color:
                                            CustomColors.primaryColorBackground,
                                        fontSize: Dimens.title,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                height: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.logout,
                                      color:
                                          CustomColors.primaryColorBackground),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                        color:
                                            CustomColors.primaryColorBackground,
                                        fontSize: Dimens.title,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
