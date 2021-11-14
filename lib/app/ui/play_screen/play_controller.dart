
import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:battleground_pro/app/utils/helper/view_helper.dart';
import 'package:get/get.dart';

class PlayContoller extends BaseController {
  int selectedIndex = 0;
   List<String> imageList = ["https://www.indianfolk.com/wp-content/uploads/2018/09/pubg-4-1070817-1024x576.jpeg"];

  @override
  void onInit() {
    super.onInit();

    print("Token :: ${LocalStorage().getToken()}");
  }




  onTabChange(int index) async {
    selectedIndex = index;
    update();
  }





}
