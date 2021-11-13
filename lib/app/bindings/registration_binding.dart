import 'package:battleground_pro/app/ui/auth/registration/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(() => RegistrationController());
  }
}
