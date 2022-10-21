import '../../../component/drawer.dart';
import '../controller/cart_controller.dart';
import 'fill_form.dart';
import 'finishing.dart';
import 'show.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  List<Widget> select = [Show(), FillForm(), FinishingTheOrder()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Seperated widget.
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffEB671B),
      ),
      backgroundColor: Color(0xffeeeeee),
      body: GetBuilder<CartController>(
          init: CartController(),
          builder: (controller) {
            return select.elementAt(controller.selectIndex);
          }),
      //CustomAppBar(child: Text('Favorite')),

      drawer: CustomDrawer(),
    );
  }
}
