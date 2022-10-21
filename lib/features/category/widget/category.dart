import 'package:ecommerce/features/category/model/category.dart';
import 'package:ecommerce/features/category/screens/category_details.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  // final String image;
  // final String name;
  final CategoryModel model;

  const CategoryWidget({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CategoryDetail(image: model.image));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: Text(
          model.name,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(blurRadius: 7, color: Colors.black, offset: Offset(1, 3))
              ]),
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 3))
            ],
            image: DecorationImage(
                image: AssetImage(model.image), fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        //color: Colors.amber,
      ),
    );
    //  Padding(padding: EdgeInsets.only(top: 10)),
  }
}
