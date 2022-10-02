import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/cart_controller.dart';

class OrderList extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 20),
        // Sepereated Widget.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Column(
              children: [
                InkWell(
                  child: SvgPicture.asset(
                    'icons/Buy.svg',
                    color: Color(0xffEB671B),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text('Orders list', style: TextStyle(color: Color(0xffEB671B)))
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              width: 50,
              height: 3,
              color: Color(0xffEB671B),
            ),
            Column(
              children: [
                GetBuilder<CartController>(builder: (controller) {
                  return InkWell(
                    onTap: () {
                      cartController.onpress();
                    },
                    child: SvgPicture.asset(
                      'icons/Document.svg', color: Colors.black38,
                      // color: Color(0xffEB671B),
                    ),
                  );
                }),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text(
                  'Fill Form',
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              width: 50,
              height: 3,
              color: Colors.black26,
            ),
            Column(
              children: [
                InkWell(
                  child: SvgPicture.asset(
                    'icons/Cart-steps.svg', color: Colors.black38,
                    // color: Color(0xffEB671B),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text(
                  'Finishing',
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                Text(
                  'the order',
                  style: TextStyle(
                    color: Colors.black38,
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
