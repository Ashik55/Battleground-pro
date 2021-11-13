
import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:battleground_pro/app/ui/me_screen/profile_screen.dart';
import 'package:battleground_pro/app/ui/ongoing_screen/ongoing_screen.dart';
import 'package:battleground_pro/app/ui/play_screen/play_screen.dart';
import 'package:battleground_pro/app/ui/result_screen/result_screen.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_screen.dart';
import 'package:battleground_pro/app/utils/helper/view_helper.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  int selectedIndex = 2;

  @override
  void onInit() {
    super.onInit();
    print("Token :: ${LocalStorage().getToken()}");
  }


  var currentTab = [
    ShopScreen(),
    OngoingScreen(),
    PlayScreen(),
    ResultScreen(),
    ProfileScreen(),
  ];



  onTabChange(int index) async {
    selectedIndex = index;
    update();
  }





}
