// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/common/widget/circularprogress.dart';
import 'package:ecommerce/component/customappbar.dart';
import 'package:ecommerce/component/drawer.dart';
import 'package:ecommerce/features/homepage/contoller/home_controller.dart';
import 'package:ecommerce/features/homepage/model/product.dart';
import 'package:ecommerce/features/homepage/widgets/image_slider.dart';
import 'package:ecommerce/features/homepage/widgets/product_item.dart';
import 'package:ecommerce/features/homepage/widgets/product_section.dart';
import 'package:ecommerce/features/homepage/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  // HomeScreenController controller = Get.put(HomeScreenController());
  HomeScreenController controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    controller.getNewProduct();
    //controller.reload();
    controller.mostorder();
    controller.categoryName();
    // controller.slide();
    return RefreshIndicator(
      color: Color(0xffEB671B),
      onRefresh: refresh,
      child: Scaffold(
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

                Row(children: [
                  Expanded(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Obx(() {
                          if (controller.myClass1.isLoading.isFalse) {
                            if (controller.myClass1.hasError.isFalse) {
                              if (controller.myClass1.result!.isEmpty) {
                                return Center(
                                  child: Text('no data found'),
                                );
                              }
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.myClass1.result!.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return ProductItemWidget(Product(
                                        image: controller
                                            .myClass1.result![index].image,
                                        title: controller
                                            .myClass1.result![index].name,
                                        price: double.parse(controller
                                            .myClass1.result![index].price)));
                                  });
                            }
                            return Center(
                              child: GestureDetector(
                                  onTap: () {
                                    controller.getNewProduct();
                                  },
                                  child: Text('retry')),
                            );
                          }
                          return const CircularProgressIndicatorWidget();
                        })),
                  ),
                ]),

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
                Row(children: [
                  Expanded(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Obx(() {
                          if (controller.myClass2.isLoading.isFalse) {
                            if (controller.myClass2.hasError.isFalse) {
                              if (controller.myClass2.result!.isEmpty) {
                                return Center(
                                  child: Text('no data found'),
                                );
                              }
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.myClass2.result!.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return ProductItemWidget(Product(
                                        image:
                                            "${controller.myClass2.result![index].image}",
                                        title:
                                            "${controller.myClass2.result![index].name}",
                                        price: double.parse(controller
                                            .myClass2.result![index].price)));
                                  });
                            }
                            return Center(
                              child: GestureDetector(
                                  onTap: () {
                                    controller.mostorder();
                                  },
                                  child: Text('retry')),
                            );
                          }
                          return const CircularProgressIndicatorWidget();
                        })),
                  ),
                ]),

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
                Row(children: [
                  Expanded(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Obx(() {
                          if (controller.myClass3.isLoading.isFalse) {
                            if (controller.myClass3.hasError.isFalse) {
                              if (controller.myClass3.result!.isEmpty) {
                                return Center(
                                  child: Text('no data found'),
                                );
                              }
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.myClass3.result!.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return ProductItemWidget(Product(
                                        image: controller
                                            .myClass3.result![index].image,
                                        title: controller
                                            .myClass3.result![index].name,
                                        price: double.parse(controller
                                            .myClass3.result![index].price)));
                                  });
                            }
                            return Center(
                              child: GestureDetector(
                                  onTap: () {
                                    controller.categoryName();
                                  },
                                  child: Text('error')),
                            );
                          }
                          return const CircularProgressIndicatorWidget();
                        })),
                  ),
                ]),
              ],
            ),
          ),
        ]),
        drawer: CustomDrawer(),
      ),
    );
  }

  Future<void> refresh() async {
    controller.slide();
    controller.getNewProduct();
    //  await controller.reload();
    controller.mostorder();
    controller.categoryName();
  }
}
