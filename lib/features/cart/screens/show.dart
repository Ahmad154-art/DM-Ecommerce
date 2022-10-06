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

      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.99,
        height: MediaQuery.of(context).size.height * 0.48,
        child: ListView.builder(
            itemCount: orderListController.image.length,
            itemBuilder: (BuildContext ctx, index) {
              return ProductBuy(index: index);
            }),
      ),
      Padding(padding: EdgeInsets.only(top: 10)),
      Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: 40,
        child: Row(
          children: const [
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
      Padding(padding: EdgeInsets.only(top: 10)),
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
                width: 100,
                height: 25,
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
          
    ]);
  }
}
