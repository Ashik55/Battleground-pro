import 'dart:io';

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
        primarySwatch: Colors.blue,
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
      : SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white10,
          systemNavigationBarColor: Colors.white10,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarBrightness:
              Brightness.dark // Dark == white status bar -- for IOS.
          ));
}
