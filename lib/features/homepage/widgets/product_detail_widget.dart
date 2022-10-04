import 'package:flutter/material.dart';

class ProductDetailWidget extends StatelessWidget {
  String text;
  ProductDetailWidget({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20)),
          Text('Features:', style: TextStyle(color: Color(0xffEB671B))),
          Padding(padding: EdgeInsets.only(left: 25)),
          Text('$text',
              style: TextStyle(color: Colors.black26)),
        ],
      ),

      //  Padding(padding: EdgeInsets.only(top: 3)),
      Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 2,
        color: Colors.black26,
      ),
      Padding(padding: EdgeInsets.only(top: 10))
    ]);
  }
}
