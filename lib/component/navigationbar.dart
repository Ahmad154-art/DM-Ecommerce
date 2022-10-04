import 'package:ecommerce/features/homepage/contoller/imageslide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../features/category/screens/category.dart';
import '../features/favorite/screens/favorite.dart';
import '../features/cart/screens/cart.dart';
import '../features/homepage/screens/home.dart';
import 'drawer.dart';

class CustomNavigationBar extends StatefulWidget {
  // CustomNavigationBar({required this.index});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  ImageSlideController controller = Get.put(ImageSlideController());
  int selectindex = 0;

  List<Widget> select = [
    Home(),
    Cart(),
    Category(),
    Favorite(),
  ];

  void onpress(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: select.elementAt(selectindex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,

        currentIndex: selectindex,
        onTap: onpress,
        // currentIndex: widget.index ?? 0,
        selectedItemColor: Color(0xffEB671B),
        unselectedItemColor: Color(0xffEB671B),
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    controller.slide();
                  },
                  child: selectindex == 0
                      ? SvgPicture.asset(
                          'icons/Home-fill.svg',
                          color: Color(0xffEB671B),
                        )
                      : SvgPicture.asset(
                          'icons/Home.svg',
                          color: Color(0xffEB671B),
                        )),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: InkWell(
                  child: selectindex == 1
                      ? SvgPicture.asset('icons/Buy-fill.svg',
                          color: Color(0xffEB671B))
                      : SvgPicture.asset('icons/Buy.svg',
                          color: Color(0xffEB671B))),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: InkWell(
                  child: selectindex == 2
                      ? SvgPicture.asset('icons/Category-fill.svg',
                          color: Color(0xffEB671B))
                      : SvgPicture.asset('icons/Category.svg',
                          color: Color(0xffEB671B))),
              label: 'Category'),
          BottomNavigationBarItem(
            icon: InkWell(
                child: selectindex == 3
                    ? SvgPicture.asset('icons/Heart-fill.svg',
                        color: Color(0xffEB671B))
                    : SvgPicture.asset('icons/Heart.svg',
                        color: Color(0xffEB671B))),
            label: 'Favorite',
          ),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
