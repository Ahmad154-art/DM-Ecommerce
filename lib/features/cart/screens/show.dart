import 'package:ecommerce/features/cart/controller/orderlist.dart';
import 'package:ecommerce/features/cart/widget/orderlist.dart';

import '../../../controller/cart_controller.dart';
import '../widget/product_buy.dart';
import 'cart.dart';
import 'fill_form.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Show extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  OrderListController orderListController = Get.put(OrderListController());
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      OrderList(),
      // Container(
      //   width: double.infinity,
      //   color: Colors.transparent,
      //   child: Padding(
      //     padding: EdgeInsets.only(left: 30, top: 20),
      //     // Sepereated Widget.
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       // crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         // TODO: Seperated Widget.////*****Done */
      //         Column(
      //           children: [
      //             InkWell(
      //               child: SvgPicture.asset(
      //                 'icons/Buy.svg',
      //                 color: Color(0xffEB671B),
      //               ),
      //             ),
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
      //                   cartController.onpress();
      //                 },
      //                 child: SvgPicture.asset(
      //                   'icons/Document.svg', color: Colors.black38,
      //                   // color: Color(0xffEB671B),
      //                 ),
      //               );
      //             }),
      //             Padding(padding: EdgeInsets.only(top: 3)),
      //             Text(
      //               'Fill Form',
      //               style: TextStyle(
      //                 color: Colors.black38,
      //               ),
      //             )
      //           ],
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      //           width: 50,
      //           height: 3,
      //           color: Colors.black26,
      //         ),
      //         Column(
      //           children: [
      //             InkWell(
      //               child: SvgPicture.asset(
      //                 'icons/Cart-steps.svg', color: Colors.black38,
      //                 // color: Color(0xffEB671B),
      //               ),
      //             ),
      //             Padding(padding: EdgeInsets.only(top: 3)),
      //             Text(
      //               'Finishing',
      //               style: TextStyle(
      //                 color: Colors.black38,
      //               ),
      //             ),
      //             Text(
      //               'the order',
      //               style: TextStyle(
      //                 color: Colors.black38,
      //               ),
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.99,
        height: MediaQuery.of(context).size.height * 0.48,
        child: GridView.builder(
            itemCount:orderListController.image.length , // TODO: should be dynamic.///****done */
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.5,
              crossAxisCount: 1,
              //  crossAxisSpacing: 1,
              // mainAxisSpacing: 1
            ),
            itemBuilder: (BuildContext ctx, index) {
              return ProductBuy( index: index);
            }),
      ),
      Padding(padding: EdgeInsets.only(top: 10)),
      Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: 40,
        child: Row(
          children: [
            Text(
              'Total Order price:',
              style: TextStyle(color: Color(0xffEB671B)),
            ),
            SizedBox(
              width: 125,
            ),
            Text(
              '0000',
              style: TextStyle(color: Color(0xffEB671B)),
            ),
          ],
        ),
      ),
      //  Show(),

      GetBuilder<CartController>(
          init: CartController(),
          builder: (controller) {
            return GestureDetector(
              onTap: () {
                // Get.to(FillForm());
                controller.onpress();
                //controller.selectIndex = 1;
                // print(Cart.selectIndex);
                print('object');
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 6),
                color: Color(0xffEB671B),
                width: 110,
                height: 35,
                child: Text('Next'),
              ),
            );
          })

      // Padding(padding: EdgeInsets.zero,
      //   child: Container(margin: EdgeInsetsDirectional.only(),
      //     width: double.infinity,height: 50,color: Colors.red,))
    ]);
  }

  // TODO: In Seperated Widget.
}

// class ProductBuy extends StatelessWidget {
//   const ProductBuy({
//     Key? key,
//    // required this.context,
//     required this.index,
//   }) : super(key: key);

//  // final  context;
//   final  index;

//   @override
//   Widget build(BuildContext context) {
//     return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       Container(
//         margin: EdgeInsets.only(left: 30),
//         decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(0.07),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: Offset(0, 3))
//             ],
//             image: DecorationImage(
//                 image: AssetImage('image/airpods3.png'), fit: BoxFit.cover)),
//         width: MediaQuery.of(context).size.width * 0.35,
//         height: MediaQuery.of(context).size.height * 0.2,
//         //color: Colors.amber,
//       ),
//       Stack(alignment: Alignment.topRight, children: [
//         Container(
//             child: Padding(
//               padding: EdgeInsets.only(top: 15, left: 5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Product Name',
//                     style: TextStyle(
//                         color: Color(0xffEB671B), fontWeight: FontWeight.bold),
//                   ),
//                   const Padding(padding: EdgeInsets.only(top: 10)),
//                   const Text(
//                     'Total price: 375,000',
//                     style: TextStyle(color: Colors.black38),
//                   ),
//                   // const  Padding(padding: EdgeInsets.only(top: 20)),
//                   Padding(
//                     padding: EdgeInsets.only(top: 25),
//                     child: Row(
//                       // mainAxisAlignment: MainAxisAlignment.start,
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InkWell(
//                           child: SvgPicture.asset(
//                             'icons/Edit Square.svg',
//                             color: Color(0xffEB671B),
//                           ),
//                         ),
//                         Padding(padding: EdgeInsets.only(left: 7)),
//                         Text(
//                           'QTY order: 250',
//                           style: TextStyle(color: Color(0xffEB671B)),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             width: MediaQuery.of(context).size.width * 0.5,
//             height: MediaQuery.of(context).size.height * 0.2,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black.withOpacity(0.07),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3))
//               ],
//             )),
//         IconButton(
//             onPressed: () {},
//             icon: SvgPicture.asset(
//               'icons/Delete.svg',
//               color: Color(0xffEB671B),
//             ))
//       ])
//       //  Padding(padding: EdgeInsets.only(top: 10)),
//     ]);
//   }

