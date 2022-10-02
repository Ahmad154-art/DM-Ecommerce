import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class CustomIcon extends StatelessWidget {
  // String? icon;
  VoidCallback? onTap;
  VoidCallback? onPress;
  VoidCallback? onClick;
  Color? iconsColor;
  Color? containerColor;
  CustomIcon({required this.onTap,
  required this.onPress,
  required this.onClick,
   required this.iconsColor ,
    required this.containerColor,});

  CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: onTap,
                  child: SvgPicture.asset(
                    'icons/Buy.svg',
                    color: iconsColor,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text('Orders list', style: TextStyle(color: iconsColor))
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              width: 50,
              height: 3,
              color: containerColor,
            ),
            Column(
              children: [
                GetBuilder<CartController>(builder: (controller) {
                  return InkWell(
                    onTap: onPress,
                    child: SvgPicture.asset(
                      'icons/Document.svg', color: iconsColor,
                      // color: Color(0xffEB671B),
                    ),
                  );
                }),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text(
                  'Fill Form',
                  style: TextStyle(
                    color: iconsColor,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              width: 50,
              height: 3,
              color: containerColor,
            ),
            Column(
              children: [
                InkWell(
                  onTap: onClick,
                  child: SvgPicture.asset(
                    'icons/Cart-steps.svg', color: iconsColor,
                    // color: Color(0xffEB671B),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text(
                  'Finishing',
                  style: TextStyle(
                    color: iconsColor
                  ),
                ),
                Text(
                  'the order',
                  style: TextStyle(
                    color: iconsColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
