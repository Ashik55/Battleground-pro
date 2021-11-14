import 'package:battleground_pro/app/ui/auth/login/login_controller.dart';
import 'package:battleground_pro/app/ui/get_started/welcome_controller.dart';
import 'package:get/get.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
