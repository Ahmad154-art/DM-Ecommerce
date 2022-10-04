import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/features/homepage/contoller/imageslide.dart';
import 'package:get/get.dart';
import 'slide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlideController controller = Get.put(ImageSlideController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.isTrue) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xffEB671B),
          ),
        );
      }
      return CarouselSlider(
          items: [
            //controller.imageSlide;
            //Slide()
            for (int i = 0; i < controller.imageSlide.length; i++)
              Slide(
                  name: controller.imageSlide[i].name,
                  image: controller.imageSlide[i].image)
          ],
          options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800)));
    });
  }
}
