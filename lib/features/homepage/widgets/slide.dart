import 'package:ecommerce/features/homepage/contoller/imageslide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Slide extends StatelessWidget {
 // ImageSlideController controller = Get.put(ImageSlideController());
  // int? index;
  String name;
  String image;
  Slide({Key? key, required this.name, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$name',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Center(
              heightFactor: 4,
            )
          ],
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(3, 3),
              )
            ],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )));
  }
}
