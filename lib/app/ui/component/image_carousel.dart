import 'package:battleground_pro/app/utils/res/dimens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageCarousel extends StatelessWidget {
  List<String?> imageUrls;
  double? customHeight;

  ImageCarousel(this.imageUrls, [this.customHeight]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Stack(
        children: [
          CarouselSlider(
            //Slider Container properties
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: imageUrls.length > 1 ? true : false,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
            items: imageUrls.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radiusMid),
                      image: DecorationImage(
                        image: NetworkImage(i!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
