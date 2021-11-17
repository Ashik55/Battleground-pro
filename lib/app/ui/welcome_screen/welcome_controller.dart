import 'package:battleground_pro/app/base/base_controller.dart';
import 'package:battleground_pro/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;

class WelcomeController extends BaseController with SingleGetTickerProviderMixin {

  var imageURL = "https://wallpaperaccess.com/full/825855.jpg";


  late final AnimationController animationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this
  )..repeat(reverse: true);

  late final Animation<double> animation = Tween<double>(
      begin: 1.0,
      end: 1.5
  ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear
  ));

  getStart() {
    Get.toNamed(Routes.LOGIN);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


}
