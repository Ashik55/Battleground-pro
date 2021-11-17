import 'package:battleground_pro/app/utils/helper/utility.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Padding(
              padding: const EdgeInsets.all(Dimens.basePaddingLarge),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/app_logo.png',
                        height: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 3,
                        width: 100,
                        color: CustomColors.primaryColorText,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Center(
                          child: Text(
                        "Log In",
                        style: TextStyle(
                            color: CustomColors.primaryColorText,
                            fontWeight: FontWeight.w700,
                            fontSize: Dimens.titleLargeExtra),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: SizedBox(
                        height: Dimens.textFieldSmall,
                        child: TextField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                              counterText: '',
                              hintText: "Email Address",
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
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        height: Dimens.textFieldSmall,
                        child: TextField(
                          controller: controller.passwordController,
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
                              counterText: '',
                              hintText: "Password",
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
                      padding: const EdgeInsets.only(top: 15.0),
                      child: SizedBox(
                        height: Dimens.textFieldSmall,
                        width: getMaxWidth(context),
                        child: ElevatedButton(
                            onPressed: () => controller.loginClick(),
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
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimens.titleMid),
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              color: CustomColors.primaryColorText,
                              decoration: TextDecoration.underline,
                              fontSize: Dimens.titleMid),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: InkWell(
                        onTap: ()=> controller.onSignInClick(),
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'New User? ',
                              ),
                              TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                      color: CustomColors.secondaryColor,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: ()=> controller.onContactUsClick(),
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Any Problem? ',
                              ),
                              TextSpan(
                                  text: 'Contact Us',
                                  style: TextStyle(
                                      color: CustomColors.secondaryColor,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )));
  }
}
