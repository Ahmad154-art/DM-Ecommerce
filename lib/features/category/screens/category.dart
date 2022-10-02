import 'package:ecommerce/features/category/widget/product.dart';
import 'package:ecommerce/features/homepage/model/product.dart';
import 'package:flutter/material.dart';

import '../../../component/drawer.dart';

class Category extends StatelessWidget {
  List<String> image = [
    'image/fausto-sandoval-w5m3PIGvkqI-unsplash.jpg',
    'image/wallpaperflare.com_wallpaper.jpg',
    'image/wallpaperflare.com_wallpaper (1).jpg',
    'image/adds3.jpg',
    'image/adds3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      // TODO: Build in Seperated Widget.
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catrgory',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffEB671B),
      ),
      body:
          //CustomAppBar(child: Text('Favorite')),

          Container(
        margin: EdgeInsets.only(top: 17),
        child: GridView.builder(
            itemCount: image.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.5,
              crossAxisCount: 1,
              //  crossAxisSpacing: 1,
              // mainAxisSpacing: 1
            ),
            itemBuilder: (BuildContext ctx, index) {
              return ProductWidget(image: image, index: index);
            }),
      ),
      // ]),
      //bottomNavigationBar: CustomNavigationBar(index: 3,),
      drawer: CustomDrawer(),
    );
  }

  // TODO: same as favourite
  // Widget itemBuild(context, index) {
  //   return Column(children: [
  //     Container(
  //       alignment: Alignment.center,
  //       child: Text(
  //         'Category Name',
  //         style: TextStyle(color: Colors.white, fontSize: 18),
  //       ),
  //       decoration: BoxDecoration(
  //           boxShadow: [
  //             BoxShadow(
  //                 color: Colors.black.withOpacity(0.08),
  //                 spreadRadius: 5,
  //                 blurRadius: 7,
  //                 offset: Offset(1, 3))
  //           ],
  //           image: DecorationImage(
  //               image: AssetImage(image[index]), fit: BoxFit.cover)),
  //       width: MediaQuery.of(context).size.width * 0.9,
  //       height: MediaQuery.of(context).size.height * 0.2,
  //       //color: Colors.amber,
  //     ),
  //     //  Padding(padding: EdgeInsets.only(top: 10)),
  //   ]);
  // }
}
