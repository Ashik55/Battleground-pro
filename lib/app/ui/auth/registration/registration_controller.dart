import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;


class RegistrationController extends BaseController {
  // RegistrationResponse? registrationResponse;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  //
  // registration() async {
  //   if (firstNameController.text.isNotEmpty &&
  //       lastNameController.text.isNotEmpty &&
  //       emailController.text.isNotEmpty &&
  //       passwordController.text.isNotEmpty) {
  //     final map = <String, dynamic>{
  //       'first_name': emailController.text,
  //       'last_name': passwordController.text,
  //       'email': passwordController.text,
  //       'password': passwordController.text,
  //       'password_confirmation': passwordController.text,
  //     };
  //
  //     try {
  //       final result =
  //           await apiClient.request("register", Method.POST, body: map);
  //       if (result != null && result is d.Response) {
  //         registrationResponse = RegistrationResponse.fromJson(result.data);
  //         if (registrationResponse != null) {
  //           if (registrationResponse?.error == true) {
  //             showMessageSnackbar(registrationResponse?.message);
  //           } else {
  //             Get.back();
  //           }
  //         }
  //
  //         update();
  //       }
  //     } on Exception catch (e) {
  //       showMessageSnackbar(e.toString());
  //     }
  //   }
  // }

  passwordVisibility() {
    obscureText = !obscureText;
    update();
  }
}
