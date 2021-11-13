import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;

class LoginController extends BaseController {
  // LoginResponse? loginResponse;


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool enablePassfiled = false;
  bool enableContinueBtn = false;
  bool obscureText = true;

  // loginClick() async {
  //   final map = <String, dynamic>{
  //     'email': emailController.text,
  //     'password': passwordController.text,
  //   };
  //
  //   try {
  //     final result = await apiClient.request("login", Method.POST, body: map);
  //     if (result != null && result is d.Response) {
  //       loginResponse = LoginResponse.fromJson(result.data);
  //       if (loginResponse != null) {
  //         if (loginResponse?.error == true) {
  //           showMessageSnackbar(loginResponse?.message);
  //         } else {
  //           if (loginResponse?.data?.token != null) {
  //             LocalStorage().setToken(loginResponse!.data!.token!);
  //
  //             showMessageSnackbar("Logged in successfully");
  //             callClientInit();
  //             Get.offAllNamed(Routes.HOME);
  //           }
  //         }
  //       }
  //
  //       update();
  //     }
  //   } on Exception catch (e) {
  //     showMessageSnackbar(e.toString());
  //   }
  // }

  registration() {
    Get.toNamed(Routes.REGISTRATION);
  }

  onEmailTextChange(String? string) {
    if (string != null && string.isNotEmpty) {
      enablePassfiled = true;
    } else {
      enablePassfiled = false;
      enableContinueBtn = false;
      passwordController.text = "";
    }
    update();
  }

  passwordVisibility() {
    obscureText = !obscureText;
    update();
  }

  onPasswordTextChange(String? string) {
    if (string != null && string.isNotEmpty) {
      enableContinueBtn = true;
    } else {
      enableContinueBtn = false;
    }

    update();
  }
}
