import 'package:ecommerce/features/cart/widget/finishing_the_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/cart_controller.dart';

class FinishingTheOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FinishingTheOrderWidget(),
      // Container(
      //   width: double.infinity,
      //   color: Colors.transparent,
      //   child: Padding(
      //     padding: EdgeInsets.only(left: 30, top: 20),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       // crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Column(
      //           children: [
      //             GetBuilder<CartController>(
      //                 init: CartController(),
      //                 builder: (controller) {
      //                   return InkWell(
      //                     onTap: () {
      //                       controller.onTap();
      //                     },
      //                     child: SvgPicture.asset(
      //                       'icons/Buy.svg',
      //                       color: Color(0xffEB671B),
      //                     ),
      //                   );
      //                 }),
      //             Padding(padding: EdgeInsets.only(top: 3)),
      //             Text('Orders list',
      //                 style: TextStyle(color: Color(0xffEB671B)))
      //           ],
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      //           width: 50,
      //           height: 3,
      //           color: Color(0xffEB671B),
      //         ),
      //         Column(
      //           children: [
      //             GetBuilder<CartController>(builder: (controller) {
      //               return InkWell(
      //                 onTap: () {
      //                   controller.onpress();
      //                 },
      //                 child: SvgPicture.asset(
      //                   'icons/Document.svg', color: Color(0xffEB671B),
      //                   // color: Color(0xffEB671B),
      //                 ),
      //               );
      //             }),
      //             Padding(padding: EdgeInsets.only(top: 3)),
      //             Text(
      //               'Fill Form',
      //               style: TextStyle(
      //                 color: Color(0xffEB671B),
      //               ),
      //             )
      //           ],
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      //           width: 50,
      //           height: 3,
      //           color: Color(0xffEB671B),
      //         ),
      //         Column(
      //           children: [
      //             GetBuilder<CartController>(builder: (controller) {
      //               return InkWell(
      //                 onTap: () {
      //                  // controller.onpress();
      //                 },
      //                 child: SvgPicture.asset(
      //                   'icons/Cart-steps.svg', color: Color(0xffEB671B),
      //                   // color: Color(0xffEB671B),
      //                 ),
      //               );
      //             }),
      //             Padding(padding: EdgeInsets.only(top: 3)),
      //             Text(
      //               'Finishing',
      //               style: TextStyle(
      //                 color: Color(0xffEB671B),
      //               ),
      //             ),
      //             Text(
      //               'the order',
      //               style: TextStyle(
      //                 color: Color(0xffEB671B),
      //               ),
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // )
    ]);
  }
}
