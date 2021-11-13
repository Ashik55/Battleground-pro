import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var HEIGHT = MediaQuery.of(context).size.height;
    var WIDTH = MediaQuery.of(context).size.width;

    return GetBuilder<HomeController>(
        builder: (controller) => const Scaffold(
            backgroundColor: Colors.white,
            body: Text("Hello")));
  }
}
