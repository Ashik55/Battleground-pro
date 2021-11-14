
import 'package:battleground_pro/app/ui/ongoing_screen/ongoing_screen.dart';
import 'package:battleground_pro/app/ui/play_screen/play_screen.dart';
import 'package:battleground_pro/app/ui/profile_screen/profile_screen.dart';
import 'package:battleground_pro/app/ui/result_screen/result_screen.dart';
import 'package:battleground_pro/app/ui/shop_screen/shop_screen.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => WillPopScope(
              onWillPop: () => onWillPop(context),
              child: Scaffold(
                backgroundColor: CustomColors.primaryColorBackground,
                body: IndexedStack(
                  index: controller.selectedIndex,
                  children: [
                    ShopScreen(),
                    OngoingScreen(),
                    PlayScreen(),
                    ResultScreen(),
                    ProfileScreen(),
                  ],
                ),
                bottomNavigationBar: SalomonBottomBar(
                  currentIndex: controller.selectedIndex,
                  selectedItemColor: CustomColors.primaryColorText,
                  unselectedItemColor: Colors.grey,
                  margin:
                  const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
                  onTap: (index) => controller.onTabChange(index),
                  items: [
                    SalomonBottomBarItem(
                      icon: Icon(Icons.add_business_outlined),
                      title: Text("Shop"),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.add_to_queue_rounded),
                      title: Text("Ongoing"),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.bolt),
                      title: Text("Play"),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.add_chart_rounded),
                      title: Text("Result"),
                    ),
                    SalomonBottomBarItem(
                      icon: Icon(Icons.person),
                      title: Text("Profile"),
                    )
                  ],
                ),
              ),
            ));
  }
}

Future<bool> onWillPop(BuildContext context) async {
  return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Do you want to exit an App'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Yes'),
            ),
          ],
        ),
      )) ??
      false;
}
