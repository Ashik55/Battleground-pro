import 'package:battleground_pro/app/ui/component/image_carousel.dart';
import 'package:battleground_pro/app/utils/res/colors.dart';
import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'play_controller.dart';

class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlayContoller>(
        builder: (controller) =>  Scaffold(
            backgroundColor: CustomColors.primaryColorBackground,
            body: Padding(
              padding: const EdgeInsets.all(Dimens.basePadding),
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 150,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        viewportFraction: 1,
                      ),
                      items: controller.imageList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimens.radiusMid),
                                image: DecorationImage(
                                  image: NetworkImage(i),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 50),

                  Center(
                    child: Shimmer.fromColors(
                      baseColor:Colors.grey.shade700,
                      highlightColor:CustomColors.primaryColorText,
                      child: const Text(
                        'Daily Match',
                        style: TextStyle(
                          fontSize: Dimens.titleMid,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.radiusMin),
                        child: Container(
                          height: 120,
                          color: CustomColors.card1,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: const Icon(Icons.home, size: 20,),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFe0f2f1)),
                                ),

                                SizedBox(height: 20,),
                                Text("PUBG", style: TextStyle(color: CustomColors.primaryColorText, fontWeight: FontWeight.w600),),
                                Text("No match found", style: TextStyle(color: CustomColors.primaryColorText),),


                              ],
                            ),
                          ),
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.radiusMin),
                        child: Container(
                          height: 120,
                          color: CustomColors.card1,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: const Icon(Icons.home, size: 20,),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFe0f2f1)),
                                ),

                                SizedBox(height: 20,),


                                Text("PUBG", style: TextStyle(color: CustomColors.primaryColorText, fontWeight: FontWeight.w600),),
                                Text("No match found", style: TextStyle(color: CustomColors.primaryColorText),),


                              ],
                            ),
                          ),
                        ),
                      )),


                    ],
                  ),

                  SizedBox(height: 20,),
                  Center(
                    child: Shimmer.fromColors(
                      baseColor:Colors.grey.shade700,
                      highlightColor:CustomColors.primaryColorText,
                      child: const Text(
                        'Tournament',
                        style: TextStyle(
                          fontSize: Dimens.titleMid,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.radiusMid),
                        child: Container(
                          height: 120,
                          color: CustomColors.card1,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: const Icon(Icons.home, size: 20,),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFe0f2f1)),
                                ),

                                SizedBox(height: 20,),
                                Text("PUBG", style: TextStyle(color: CustomColors.primaryColorText, fontWeight: FontWeight.w600),),
                                Text("No match found", style: TextStyle(color: CustomColors.primaryColorText),),


                              ],
                            ),
                          ),
                        ),
                      )),
                      SizedBox(width: 10,),
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.radiusMid),
                        child: Container(
                          height: 120,
                          color: CustomColors.card1,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: const Icon(Icons.home, size: 20,),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFe0f2f1)),
                                ),

                                SizedBox(height: 20,),


                                Text("PUBG", style: TextStyle(color: CustomColors.primaryColorText, fontWeight: FontWeight.w600),),
                                Text("No match found", style: TextStyle(color: CustomColors.primaryColorText),),


                              ],
                            ),
                          ),
                        ),
                      )),


                    ],
                  ),


                ],
              ),
            )


        ));
  }
}
