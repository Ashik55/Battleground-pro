import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'registration_controller.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var HEIGHT = MediaQuery.of(context).size.height;
    var WIDTH = MediaQuery.of(context).size.width;

    return GetBuilder<RegistrationController>(
        builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              iconTheme: const IconThemeData(color: CustomColors.customBlack),
              backgroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 120,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Registration",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: Dimens.textFieldMid,
                    child: TextField(
                      controller: controller.firstNameController,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "First Name",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: Dimens.textFieldMid,
                    child: TextField(
                      controller: controller.lastNameController,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: Dimens.textFieldMid,
                    child: TextField(
                      controller: controller.emailController,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: Dimens.textFieldMid,
                    child: TextField(
                      controller: controller.passwordController,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      obscureText: controller.obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(controller.obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () => controller.passwordVisibility(),
                          color: Colors.grey.shade500,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: Dimens.buttonMid,
                    width: WIDTH,
                    child: ElevatedButton(
                        onPressed: () => print("call registration"),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                CustomColors.lightRed),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimens.radiusMin)),
                            )),
                        child: const Text(
                          "Create an Account",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimens.titleLarge),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'By continuing I accept the ',
                        style: TextStyle(fontSize: 12, color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'terms and condition ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),

                          TextSpan(
                            text: 'and ',
                          ),

                          TextSpan(
                              text: 'privacy policy.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),

                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )));
  }
}
