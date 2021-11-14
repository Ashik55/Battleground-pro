import 'dart:io';

import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/api/api_client.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync<ApiClient>(() => ApiClient().init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setupStatusBar();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CustomColors.primaryColorBackground,
        primarySwatch: Colors.blue
      ),
      defaultTransition: Transition.topLevel,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
    );
  }
}

void setupStatusBar() {
  //Status Bar color Combination for both plat form
  Platform.isIOS
      ? null
      : SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
          ));
}
