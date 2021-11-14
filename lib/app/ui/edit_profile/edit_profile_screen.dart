import 'package:battleground_pro/app/utils/helper/utility.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
        builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              title: Text("Edit Profile"),
              iconTheme:
                  const IconThemeData(color: CustomColors.primaryIconColor),
              backgroundColor: CustomColors.primaryColorBackground,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: Dimens.textFieldSmall,
                          child: TextField(
                            controller: controller.firstNameController,
                            decoration: const InputDecoration(
                              labelText: "First Name*",
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                            ),
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                            keyboardType: TextInputType.name,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: SizedBox(
                          height: Dimens.textFieldSmall,
                          child: TextField(
                            controller: controller.lastNameController,
                            decoration: const InputDecoration(
                              labelText: "Last Name*",
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                            ),
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                            keyboardType: TextInputType.name,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.userNameController,
                      decoration: const InputDecoration(
                        labelText: "UserName*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                    ),
                  ),

                  SizedBox(height: 5),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        labelText: "Email*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                    ),
                  ),


                  SizedBox(height: 5),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.mobileController,
                      decoration: const InputDecoration(
                        labelText: "Mobile Number*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  CustomColors.primaryColorBackground),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimens.radiusNone)),
                              )),
                          child: const Text(
                            "Save",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimens.titleMid),
                          )),
                    ),
                  ),

                  SizedBox(height: 45),
                  Text("Change Password", style: TextStyle(color: CustomColors.primaryColorBackground, fontWeight: FontWeight.w600, fontSize: Dimens.title),),
                  SizedBox(height: 10),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.oldPassController,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(controller.oldPassObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () =>
                              controller.oldPasswordVisibility(),
                          color: Colors.grey.shade500,
                        ),
                        labelText: "Old Password*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                    ),
                  ),


                  SizedBox(height: 5),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.newPassController,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(controller.newPassObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () =>
                              controller.newPasswordVisibility(),
                          color: Colors.grey.shade500,
                        ),
                        labelText: "New Password*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
                    ),
                  ),

                  SizedBox(height: 5),
                  SizedBox(
                    height: Dimens.textFieldSmall,
                    child: TextField(
                      controller: controller.confirmPassController,
                      decoration:  InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(controller.confirmPassObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () =>
                              controller.confirmPasswordVisibility(),
                          color: Colors.grey.shade500,
                        ),
                        labelText: "Confirm Password*",
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimens.titleMid),
                      keyboardType: TextInputType.name,
                      maxLines: 1,
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  CustomColors.primaryColorBackground),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimens.radiusNone)),
                              )),
                          child: const Text(
                            "Update Password",
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
