import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/logic/state.dart';
import 'package:ecommerce/features/homepage/contoller/home_controller.dart';
import 'package:get/get.dart';
import '../../../common/widget/circularprogress.dart';
import 'slide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    controller.slide();
    return GetBuilder<HomeScreenController>(builder: (controller1) {
      return Obx(() {
        if (controller.myClass.isLoading.isFalse) {
          if (controller.myClass.hasError.isFalse) {
            if (controller.myClass.result!.isEmpty) {
              return const Center(
                child: Text('no data found'),
              );
            }
            return CarouselSlider(
                items: [
                  //controller.imageSlide;
                  //Slide()
                  for (int i = 0; i < controller.myClass.result!.length; i++)
                    Slide(
                        name: controller.myClass.result![i].name,
                        image: controller.myClass.result![i].image)
                ],
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800)));
          }

          return Center(
              child: GestureDetector(
                  onTap: () {
                    controller.slide();
                  },
                  child: Text('retry')));
        }
        return  const CircularProgressIndicatorWidget();
      });
      // return Obx(() {
      //   if (controller.isLoading.isTrue) {
      //     return const Center(
      //       child: CircularProgressIndicator(
      //         color: Color(0xffEB671B),
      //       ),
      //     );
      //   } else if (controller.isLoading.isFalse) {
      //     if (controller.error.isTrue) {
      //       if (controller.isLoading.isFalse) {
      //         return Center(
      //             child: Column(
      //           children: [
      //             Text(
      //               "${controller.haserror}",
      //               style: TextStyle(color: Color(0xffEB671B)),
      //             ),
      //             Padding(padding: EdgeInsets.only(top: 10)),
      //             GetBuilder<HomeScreenController>(builder: (controller) {
      //               return GestureDetector(
      //                 onTap: () {
      //                   controller.onpress();
      //                 },
      //                 child: Text('Retry'),
      //               );
      //             })
      //           ],
      //         ));
      //       }
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     return CarouselSlider(
      //         items: [
      //           //controller.imageSlide;
      //           //Slide()
      //           for (int i = 0; i < controller.imageSlide.length; i++)
      //             Slide(
      //                 name: controller.imageSlide[i].name,
      //                 image: controller.imageSlide[i].image)
      //         ],
      //         options: CarouselOptions(
      //             enlargeCenterPage: true,
      //             autoPlay: true,
      //             autoPlayAnimationDuration:
      //                 const Duration(milliseconds: 800)));

      //   }

      //   return CarouselSlider(
      //       items: [
      //         //controller.imageSlide;
      //         //Slide()
      //         for (int i = 0; i < controller.imageSlide.length; i++)
      //           Slide(
      //               name: controller.imageSlide[i].name,
      //               image: controller.imageSlide[i].image)
      //       ],
      //       options: CarouselOptions(
      //           enlargeCenterPage: true,
      //           autoPlay: true,
      //           autoPlayAnimationDuration: const Duration(milliseconds: 800)
      //           )
      //           );
      // });
    });
  }
}
