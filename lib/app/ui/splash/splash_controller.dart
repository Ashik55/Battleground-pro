
import 'package:battleground_pro/app/base/base_controller.dart';
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
      Get.offAllNamed(Routes.HOME);
      // SPrefManager().getLoggedIn().then((value) => value ? Get.offAllNamed(Routes.HOME) : Get.offAllNamed(Routes.LOGIN));
    });
  }


}
