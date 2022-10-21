import 'package:ecommerce/common/widget/circularprogress.dart';
import 'package:ecommerce/features/category/controller/category.dart';
import 'package:ecommerce/features/category/model/category.dart';
import 'package:ecommerce/features/category/widget/category.dart';
import 'package:ecommerce/features/homepage/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/drawer.dart';

class Category extends StatelessWidget {
  CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    controller.getData();
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
      body: Container(child: Obx(() {
        if (controller.myClass.isLoading.isFalse) {
          if (controller.myClass.hasError.isFalse) {
            if (controller.myClass.result!.isEmpty) {
              return Center(
                child: Text('no data found'),
              );
            }
            return GridView.builder(
                itemCount: controller.myClass.result!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2.3,

                  crossAxisCount: 1,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 0.5
                ),
                itemBuilder: (BuildContext ctx, index) {
                  return CategoryWidget(
                    model: controller.myClass.result![index],
                  );
                });
          }
          return Center(
            child: GestureDetector(
                onTap: () {
                  controller.getData();
                },
                child: const Text('Retry'),
          )
          );
        }
        return CircularProgressIndicatorWidget();
      })
          // controller.obx((state) {
          //   return GridView.builder(
          //       itemCount: controller.category.length,
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         childAspectRatio: 2.3,

          //         crossAxisCount: 1,
          //         // crossAxisSpacing: 10,
          //         // mainAxisSpacing: 0.5
          //       ),
          //       itemBuilder: (BuildContext ctx, index) {
          //         return CategoryWidget(
          //           model: controller.category[index],
          //         );
          //       });
          // },
          //     onLoading: Center(
          //       child: CircularProgressIndicator(),
          //     ),
          //     onEmpty: Center(child: Text('not data found')),
          //     onError: (error) => Center(
          //         child: GestureDetector(
          //             onTap: () {
          //               controller.getData();
          //             },
          //             child: Text(error.toString()
          //             )
          //             )
          //             )
          //             ),

          // })
          // Obx(() {
          //   if (controller.isLoading.isTrue) {
          //     return const Center(
          //         child: CircularProgressIndicator(
          //       color: Color(0xffEB671B),
          //     ));
          //   }
          //   return GridView.builder(
          //       itemCount: controller.category.length,
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         childAspectRatio: 2.3,

          //         crossAxisCount: 1,
          //         // crossAxisSpacing: 10,
          //         // mainAxisSpacing: 0.5
          //       ),
          //       itemBuilder: (BuildContext ctx, index) {
          //         return CategoryWidget(
          //           model: controller.category[index],
          //         );
          //       });
          // })
          ),
      // ]),
      //bottomNavigationBar: CustomNavigationBar(index: 3,),
      drawer: CustomDrawer(),
    );
  }
}
