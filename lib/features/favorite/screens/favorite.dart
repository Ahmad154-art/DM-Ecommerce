import '../../../component/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/favorite_product.dart';

class Favorite extends StatelessWidget {
  List<String> image = [
    'image/¦+¦+.jpg',
    'image/5 (2).jpg',
    'image/airpods1.jpg',
    'image/airpods2.jpg',
    'image/airpods3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Favorite',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xffEB671B),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 17),
          child: GridView.builder(
              itemCount: image.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 2.6,
                crossAxisCount: 2,
                //  crossAxisSpacing: 2/3,
                // mainAxisSpacing: 2/3
              ),
              itemBuilder: (BuildContext ctx, index) {
                return ProductFavoriteWidget(image: image, index: index,name: 'a',price: 2,description: 'aa',);
              }),
        ));
  }
}


