
import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:battleground_pro/app/utils/helper/view_helper.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  bool isLoggedIn = false;

  @override
  void onInit() {
    super.onInit();

    print("Token :: ${LocalStorage().getToken()}");
  }



  onSignInClick() {
    Get.toNamed(Routes.LOGIN);
  }

}
