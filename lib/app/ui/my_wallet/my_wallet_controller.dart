
import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/data/local/local_storage.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:battleground_pro/app/utils/helper/view_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWalletContoller extends BaseController with SingleGetTickerProviderMixin {
  int selectedIndex = 0;
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    print("Token :: ${LocalStorage().getToken()}");
  }


  onTabChange(int index) async {
    selectedIndex = index;
    update();
  }





}
