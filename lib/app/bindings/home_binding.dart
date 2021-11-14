import 'package:battleground_pro/app/ui/home/home_controller.dart';

import 'package:battleground_pro/app/ui/ongoing_screen/ongoing_controller.dart';
import 'package:battleground_pro/app/ui/play_screen/play_controller.dart';
import 'package:battleground_pro/app/ui/profile_screen/profile_controller.dart';
import 'package:battleground_pro/app/ui/result_screen/result_controller.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ShopContoller>(() => ShopContoller());
    Get.lazyPut<OngoingContoller>(() => OngoingContoller());
    Get.lazyPut<PlayContoller>(() => PlayContoller());
    Get.lazyPut<ResultContoller>(() => ResultContoller());
    Get.lazyPut<ProfileContoller>(() => ProfileContoller());
  }
}
