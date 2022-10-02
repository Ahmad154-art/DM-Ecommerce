import 'package:ecommerce/features/cart/widget/fill_form.dart';

import '../../../component/drawer.dart';
import '../../../controller/cart_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FillForm extends StatelessWidget {
  // CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FillFormWidget(),
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
      //             InkWell(
      //               child: SvgPicture.asset(
      //                 'icons/Document.svg', color: Color(0xffEB671B),
      //                 // color: Color(0xffEB671B),
      //               ),
      //             ),
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
      //             GetBuilder<CartController>(
      //                 init: CartController(),
      //                 builder: (controller) {
      //                   return InkWell(
      //                     onTap: () {
      //                       controller.onClick();
      //                     },
      //                     child: SvgPicture.asset(
      //                       'icons/Cart-steps.svg', color: Colors.black38,
      //                       // color: Color(0xffEB671B),
      //                     ),
      //                   );
      //                 }),
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
      SizedBox(height: 20,),
      Container(
                  
                  height: 35,
                  width: 275,
                  decoration: const BoxDecoration(
                      //  borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                  //  onChanged: (value) {},
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                       // prefixIcon: 'Name:'
                        
                        
                            ),
                  ),
                ),
                Container(
                  
                   margin: EdgeInsets.only(top: 20),
                  
                  height: 35,
                  width: 275,
                  decoration: const BoxDecoration(
                      //  borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextFormField(
                    
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                    decoration:const InputDecoration(
                        border: InputBorder.none,
                        
                        
                            ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  
                  height: 35,
                  width: 275,
                  decoration: const BoxDecoration(
                      //  borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                    decoration:const InputDecoration(
                        border: InputBorder.none,
                        
                            ),
                  ),
                ),
    ]);
  }
}
