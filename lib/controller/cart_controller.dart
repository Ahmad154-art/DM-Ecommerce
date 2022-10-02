import '../features/cart/screens/fill_form.dart';
import '../features/cart/screens/show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  int selectIndex = 0;
  
  
void onTap() {
    selectIndex = 0;
    update();
  }
  void onpress() {
    selectIndex = 1;
    update();
  }
  
  void onClick() {
    selectIndex =2;
    update();
  }
}
