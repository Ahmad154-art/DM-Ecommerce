// ignore_for_file: prefer_const_constructors

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
  HomeScreenController controller = Get.put(HomeScreenController());
  
  @override
  Widget build(BuildContext context) {
    controller.getNewProduct();
    controller.reload();
    controller.mostorder();
    controller.categoryName();
    // controller.slide();
    return RefreshIndicator(color: Color(0xffEB671B),
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
                          if (controller.isLoading2.isTrue) {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Color(0xffEB671B),
                              ),
                            );
                          }
                          return GetBuilder<HomeScreenController>(
                              builder: (controller) {
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.products.length,
                                itemBuilder: (BuildContext context, index) {
                                  return ProductItemWidget(Product(
                                      image:
                                          "${controller.products[index].image}",
                                      title: "${controller.products[index].name}",
                                      price: double.parse(
                                          controller.products[index].price)));
                                });
                          });
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
                          if (controller.isLoading3.isTrue) {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Color(0xffEB671B),
                              ),
                            );
                          }
                          return GetBuilder<HomeScreenController>(
                              builder: (controller) {
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.orders.length,
                                itemBuilder: (BuildContext context, index) {
                                  return ProductItemWidget(Product(
                                      image: "${controller.orders[index].image}",
                                      title: "${controller.orders[index].name}",
                                      price: double.parse(
                                          controller.orders[index].price)));
                                });
                          });
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
                          if (controller.isLoading4.isTrue) {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Color(0xffEB671B),
                              ),
                            );
                          }
                          return GetBuilder<HomeScreenController>(
                              builder: (controller) {
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.category.length,
                                itemBuilder: (BuildContext context, index) {
                                  return ProductItemWidget(Product(
                                      image:
                                          "${controller.category[index].image}",
                                      title: "${controller.category[index].name}",
                                      price: double.parse(
                                          controller.category[index].price)));
                                });
                          });
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
  Future<void> refresh()async{
   await controller.getNewProduct();
   // controller.reload();
  await  controller.mostorder();
   await controller.categoryName();
  }
}
