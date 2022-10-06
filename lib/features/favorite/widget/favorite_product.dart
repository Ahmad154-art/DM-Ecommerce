import 'package:ecommerce/features/favorite/controller/favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductFavoriteWidget extends StatelessWidget {
  FavoriteScreenController controller = Get.put(FavoriteScreenController());
  // bool ispressed = false;
  // TODO: Should accpet Product.
  ProductFavoriteWidget({
    Key? key,
    required this.image,
    required this.index,
    required this.name,
    required this.price,
    required this.description,
  }) : super(key: key);

  final List<String> image;
  final index;
  String name;
  double price;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ],
            image: DecorationImage(
                image: AssetImage(image[index]), fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.2,
        //color: Colors.amber,
      ),
      //  Padding(padding: EdgeInsets.only(top: 10)),
      Stack(alignment: Alignment.topRight, children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(1, 1),
            ),
          ]),
          height: 85,
          //color: Colors.red,
          //  height: MediaQuery.of(context).size.height * 0.38,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 5)),
                Text('$name'),
                Text('$price\$'),
                const Padding(padding: EdgeInsets.only(top: 7)),
                Text(
                  '$description',
                  maxLines: 3,
                  style: const TextStyle(
                      fontSize: 11,
                      color: Colors.black38,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ),
        Obx(() {
          return IconButton(
              // TODO: should be triggered.
              onPressed: () {
                controller.onClick(index);
                print('aaaaaaaaaaa');
              },
              icon: controller.favorite.value == true
                  ? SvgPicture.asset(
                      'icons/Heart-fill.svg',
                      color: Color(0xffEB671B),
                    )
                  : SvgPicture.asset(
                      'icons/Heart.svg',
                      color: Color(0xffEB671B),
                    ));
        })
      ])
    ]);
  }

  // bool favorite = true;
  // void onpress() {
  //   favorite = !favorite;
  //   print(favorite);
  // }
}
