import 'package:battleground_pro/app/utils/helper/utility.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'registration_controller.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<RegistrationController>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            appBar: AppBar(
              elevation: 0,
              title: Text("Sign In"),
              iconTheme: const IconThemeData(color: CustomColors.primaryIconColor),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 20,),
                  
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimens.radiusMid),
                      child: Image.asset(
                        'assets/images/reg_banner.jpg',
                        fit: BoxFit.cover,
                        height: 80,
                        width: getMaxWidth(context),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.firstNameController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "First Name*",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.lastNameController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Last Name*",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.userNameController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "User Name*",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Email Address*",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.mobileController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Mobile Number*",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      child: TextField(
                        controller: controller.promoController,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: "Promo Code (optional)",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 14),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            contentPadding: const EdgeInsets.only(left: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade200),
                              borderRadius:
                              BorderRadius.circular(Dimens.radiusNone),
                            )),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      height: Dimens.textFieldSmall,
                      width: getMaxWidth(context),
                      child: ElevatedButton(
                          onPressed: () => print(""),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  CustomColors.primaryButtonColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimens.radiusNone)),
                              )),
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimens.titleMid),
                          )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
