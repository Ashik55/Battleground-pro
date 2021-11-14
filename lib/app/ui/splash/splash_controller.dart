import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashController extends BaseController {
  @override
  void onInit() {
    startTimer();
    //callLogin();
    super.onInit();
  }

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      LocalStorage().getToken() == null
              ? Get.offAllNamed(Routes.WELCOME)
              : Get.offAllNamed(Routes.HOME);
    });
  }
}
