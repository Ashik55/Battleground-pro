import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;


class EditProfileController extends BaseController {
  // RegistrationResponse? registrationResponse;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  bool oldPassObscureText = true;
  bool newPassObscureText = true;
  bool confirmPassObscureText = true;


  oldPasswordVisibility() {
    oldPassObscureText = !oldPassObscureText;
    update();
  }

  newPasswordVisibility() {
    newPassObscureText = !newPassObscureText;
    update();
  }
  confirmPasswordVisibility() {
    confirmPassObscureText = !confirmPassObscureText;
    update();
  }


}
