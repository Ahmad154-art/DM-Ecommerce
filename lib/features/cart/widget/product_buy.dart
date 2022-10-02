import 'package:ecommerce/features/cart/controller/orderlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductBuy extends StatelessWidget {
  OrderListController controller = Get.put(OrderListController());

  ProductBuy({
    Key? key,
    // required this.context,
    required this.index,
  }) : super(key: key);

  // final  context;
  final index;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(left: 30),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ],
            image: DecorationImage(
                image: AssetImage(controller.image[index]), fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.2,
        //color: Colors.amber,
      ),
      Stack(alignment: Alignment.topRight, children: [
        Container(
            child: Padding(
              padding: EdgeInsets.only(top: 15, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product Name',
                    style: TextStyle(
                        color: Color(0xffEB671B), fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Text(
                    'Total price: 375,000',
                    style: TextStyle(color: Colors.black38),
                  ),
                  // const  Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: SvgPicture.asset(
                            'icons/Edit Square.svg',
                            color: Color(0xffEB671B),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 7)),
                        Text(
                          'QTY order: 250',
                          style: TextStyle(color: Color(0xffEB671B)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ],
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/Delete.svg',
              color: Color(0xffEB671B),
            ))
      ])
      //  Padding(padding: EdgeInsets.only(top: 10)),
    ]);
  }
}
