import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var HEIGHT = MediaQuery.of(context).size.height;
    var WIDTH = MediaQuery.of(context).size.width;

    return GetBuilder<LoginController>(
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
                      height: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: Dimens.textFieldMid,
                    child: TextField(
                      controller: controller.emailController,
                      onChanged: (string) => controller.onEmailTextChange(string),
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
                  controller.enablePassfiled == true
                      ? Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                            height: Dimens.textFieldMid,
                            child: TextField(
                              controller: controller.passwordController,
                              onChanged: (string) => controller.onPasswordTextChange(string),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                              obscureText: controller.obscureText,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(controller.obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () =>
                                      controller.passwordVisibility(),
                                  color: Colors.grey.shade500,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 14),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                      )
                      : SizedBox(),

                  SizedBox(
                    height: Dimens.buttonMid,
                    width: WIDTH,
                    child: ElevatedButton(
                        onPressed: () => print(""),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                controller.enableContinueBtn == true
                                    ? CustomColors.lightRed
                                    : Colors.grey),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimens.radiusMin)),
                            )),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimens.titleLarge),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: Dimens.buttonMid,
                    width: WIDTH,
                    child: ElevatedButton(
                        onPressed: () => controller.registration(),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(CustomColors.lightRed),
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
                    height: 20,
                  ),

                ],
              ),
            )));
  }
}
