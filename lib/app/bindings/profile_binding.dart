import 'package:battleground_pro/app/ui/home/home_controller.dart';
import 'package:battleground_pro/app/ui/profile_screen/profile_controller.dart';

import 'package:battleground_pro/app/ui/shop_screen/shop_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileContoller>(() => ProfileContoller());
  }
}
