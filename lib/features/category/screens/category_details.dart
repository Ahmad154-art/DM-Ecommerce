import 'package:ecommerce/component/drawer.dart';
import 'package:ecommerce/features/category/controller/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetail extends StatelessWidget {
  String image;
  CategoryDetail({required this.image});
  CategoryController controller = Get.put(CategoryController());
  //const CategoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catrgory',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffEB671B),
      ),
      drawer: CustomDrawer(),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 125,
          // color: Colors.red,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Container(
          child: Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text('sub Category Name')),
                    //  margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    height: 50,
                    color: Color(0xffeeeeee),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return Divider(
                    thickness: 2,
                  );
                },
                itemCount: 5),
          ),
        )
      ]),
    );
  }
}
