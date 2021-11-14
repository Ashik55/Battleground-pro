import 'package:battleground_pro/app/ui/auth/registration/registration_controller.dart';
import 'package:battleground_pro/app/ui/edit_profile/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(() => EditProfileController());
  }
}
