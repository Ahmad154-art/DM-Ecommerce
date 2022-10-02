import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  List<String> image = [];
  final index;
  ProductWidget({required this.image, required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        child: Text(
          'Category Name',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 3))
            ],
            image: DecorationImage(
                image: AssetImage(image[index]), fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        //color: Colors.amber,
      ),
      //  Padding(padding: EdgeInsets.only(top: 10)),
    ]);
  }
}
