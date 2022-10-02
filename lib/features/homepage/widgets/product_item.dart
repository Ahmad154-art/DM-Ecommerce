import 'package:ecommerce/features/homepage/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/product.dart';

// TODO: Accept title and price as parameter.
// TODO: Renate to a propiate name.
class ProductItemWidget extends StatelessWidget {
  final Product product;
  const ProductItemWidget(this.product, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed('/product_detail');
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.28,
            height: MediaQuery.of(context).size.width * 0.28,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(product.image), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),

            // alignment: Alignment.topRight,
            // child: Icon(Icons.favorite_outline),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(1, 1),
            )
          ]),
          width: MediaQuery.of(context).size.width * 0.28,
          height: 40,
          // color: Colors.white,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                product.title,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Text(
                '${product.price}\$',
                style: TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          ),
        )
      ],
    );
  }
}
