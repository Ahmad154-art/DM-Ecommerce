import 'package:ecommerce/features/cart/screens/finishing.dart';
import 'package:ecommerce/features/cart/widget/fill_form.dart';

import '../../../component/drawer.dart';
import '../controller/cart_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widget/text_field.dart';

class FillForm extends StatelessWidget {
  CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        FillFormWidget(),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          text: 'Name:',
          type: TextInputType.text,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        TextFieldWidget(
          text: 'Phone number:',
          type: TextInputType.number,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        TextFieldWidget(
          text: '',
          type: TextInputType.text,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        TextFieldWidget(
          text: '',
          type: TextInputType.text,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        TextFieldWidget(
          text: '',
          type: TextInputType.text,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          height: 125,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
        ),
        const Padding(padding: EdgeInsets.only(top: 23)),
        GetBuilder<CartController>(builder: (controller) {
          return GestureDetector(
            onTap: () {
              controller.onClick();
              print('aaaaaaaaaaa');
            },
            child: Container(
                width: 100,
                height: 25,
                color: Color(0xffEB671B),
                child: Center(
                    child: Text(
                  'Confirm order',
                  style: TextStyle(color: Colors.white),
                ))),
          );
        }),
        const Padding(padding: EdgeInsets.only(top: 10)),
      ]),
    );
  }
}
