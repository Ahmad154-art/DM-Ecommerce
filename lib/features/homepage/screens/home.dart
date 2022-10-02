// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/component/customappbar.dart';
import 'package:ecommerce/component/drawer.dart';
import 'package:ecommerce/features/homepage/contoller/imageslide.dart';
import 'package:ecommerce/features/homepage/model/product.dart';
import 'package:ecommerce/features/homepage/widgets/image_slider.dart';
import 'package:ecommerce/features/homepage/widgets/product_item.dart';
import 'package:ecommerce/features/homepage/widgets/product_section.dart';
import 'package:ecommerce/features/homepage/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  ImageSlideController controller = Get.put(ImageSlideController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Column(children: [
        CustomAppBar(
          child: Image.asset('image/S-Logo-DM.png', scale: 2),
          icon: 'icons/Notification.svg',
          onpress: () {
            // controller.slide();
          },
          padding: EdgeInsets.only(left: 15),
        ),
        Expanded(
          child: ListView(
            children: [
              // TODO:build in a seperated widget. //*****Done */
              SearchBar(),
              ImageSlider(),

              const Padding(padding: EdgeInsets.only(top: 10)),
              // TODO: seperate in other widget. //******Done */
              ProductSection(
                title: 'New Collection',
              ),

              const Padding(padding: EdgeInsets.only(top: 10)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                    // const Padding(padding: EdgeInsets.only(left: 5)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                    // const Padding(padding: EdgeInsets.only(left: 5)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2))
                  ],
                ),
              ),
              // TODO: Just like see more.////******Done */
              const Padding(padding: EdgeInsets.only(top: 25)),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xffc8c8c8),
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              ProductSection(title: 'Most ordered'),

              const Padding(padding: EdgeInsets.only(top: 10)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    ProductItemWidget(Product(
                        image: "image/¦+¦+.jpg", title: "bk", price: 2)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              // TODO: Just like see more.//*****Done */
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xffc8c8c8),
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              ProductSection(title: 'Category Name'),

              const Padding(padding: EdgeInsets.only(top: 10)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                    // const Padding(padding: EdgeInsets.only(left: 5)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2)),
                    // const Padding(padding: EdgeInsets.only(left: 5)),
                    ProductItemWidget(
                        Product(image: "image/¦+¦+.jpg", title: "", price: 2))
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
      drawer: CustomDrawer(),
    );
  }
}
