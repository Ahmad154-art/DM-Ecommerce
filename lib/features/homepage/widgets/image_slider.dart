import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/features/homepage/contoller/imageslide.dart';
import 'package:get/get.dart';
import 'slide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
 // ImageSlideController controller = Get.put(ImageSlideController());
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          //Slide()
          Slide(name: 'Category Name', image: 'image/man.png'),
          Slide(name: 'Category Name', image: 'image/man.png'),
          Slide(name: 'Category Name', image: 'image/man.png'),

          //   Container(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: const [
          //           Text(
          //             'Category Name',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 30,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           Center(
          //             heightFactor: 4,
          //           )
          //         ],
          //       ),
          //       decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black.withOpacity(0.03),
          //               spreadRadius: 5,
          //               blurRadius: 7,
          //               offset: Offset(3, 3),
          //             )
          //           ],
          //           image: const DecorationImage(
          //             image: AssetImage('image/man.png'),
          //             fit: BoxFit.cover,
          //           ))),

          //   Container(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: const [
          //           Text(
          //             'Category Name',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 30,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           Center(
          //             heightFactor: 4,
          //           )
          //         ],
          //       ),
          //       decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black.withOpacity(0.03),
          //               spreadRadius: 5,
          //               blurRadius: 7,
          //               offset: Offset(3, 3),
          //             )
          //           ],
          //           image: const DecorationImage(
          //               image: AssetImage('image/pexels-ron-lach-7849520.jpg'),
          //               fit: BoxFit.cover))),
          //   Container(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: const [
          //           Text(
          //             'Category Name',
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 30,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           Center(
          //             heightFactor: 4,
          //           )
          //         ],
          //       ),
          //       decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black.withOpacity(0.03),
          //               spreadRadius: 5,
          //               blurRadius: 7,
          //               offset: Offset(3, 3),
          //             )
          //           ],
          //           image: const DecorationImage(
          //               image: AssetImage('image/women_s purple button-up.jpg'),
          //               fit: BoxFit.cover))),
        ],
        options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800)));
  }
}
