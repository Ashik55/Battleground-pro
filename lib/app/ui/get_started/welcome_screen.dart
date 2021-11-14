import 'package:animate_do/animate_do.dart';
import 'package:battleground_pro/app/utils/helper/utility.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (controller) =>
          Scaffold(

            body: Container(
              child: Stack(
                  children: [
              Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(),
              child: ScaleTransition(
                scale: controller.animation,
                child: Image.network(
                controller.imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
      Positioned(
        bottom: 0,
        child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.1)
                    ]
                )
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDown(
                    duration: Duration(milliseconds: 500),
                    child: const Text('PUBG \nTournament',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  FadeInDown(
                      delay: Duration(milliseconds: 100),
                      duration: Duration(milliseconds: 800),
                      child: Text('Welcome to modern tournament App. Play hard, gain the reward.',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 18,
                        ),
                      )
                  ),
                  const SizedBox(height: 50,),
                  FadeInLeft(
                    delay: Duration(milliseconds: 100),
                    duration: Duration(milliseconds: 1000),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          onPressed: ()=> controller.getStart(),
                          color: Colors.orange,
                          padding: const EdgeInsets.only(
                              right: 5, left: 30, top: 5, bottom: 5),
                          child: Container(
                            height: 40,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.4,
                            child: Row(
                              children: [
                                Text('Get Started',
                                  style: TextStyle(
                                    color: Colors.orange.shade50,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.orange.shade300,
                                        borderRadius: BorderRadius.circular(40)
                                    ),
                                    child: Icon(Icons.arrow_forward,
                                      color: Colors.orange.shade100,)
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ]
            )
        ),
      )
      ],
    ),)


    )
    );
  }
}
