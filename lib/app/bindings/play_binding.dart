import 'package:battleground_pro/app/ui/home/home_controller.dart';

import 'package:battleground_pro/app/ui/play_screen/play_controller.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_controller.dart';
import 'package:get/get.dart';

class PlayBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayContoller>(() => PlayContoller());
  }
}
