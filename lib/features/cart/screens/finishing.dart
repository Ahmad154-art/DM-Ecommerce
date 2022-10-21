import 'package:ecommerce/component/navigationbar.dart';
import 'package:ecommerce/features/cart/widget/finishing_the_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class FinishingTheOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FinishingTheOrderWidget(),
      Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Thank you for your order',
            style: TextStyle(fontSize: 25, color: Color(0xffEB671B)),
          ),
          Padding(padding: EdgeInsets.only(top: 25)),
          Text('We will you contact you soon to complete the order',
              style: TextStyle(color: Color(0xffEB671B))),
        ],
      )),
      GestureDetector(
          onTap: () {
            Get.toNamed('/navigation_bar');
            print('mmmmmmm');
          },
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 25,
            child: Text('Ok', style: TextStyle(color: Colors.white)),
            color: Color(0xffEB671B),
          )),
      Padding(padding: EdgeInsets.only(bottom: 10))
    ]);
  }
}
