import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  String title;
  ProductSection({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 25)),
         Text(
          '$title',
          style: TextStyle(
              color: Color(0xffEB671B),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 150,
          height: 1,
          color: Colors.transparent,
        ),
        const Text(
          ' See More',
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
