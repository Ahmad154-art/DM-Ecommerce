import 'dart:convert';

import 'package:ecommerce/data/api.dart';
import 'package:ecommerce/data/slides.dart';
import 'package:ecommerce/features/homepage/model/newproductmodel.dart';
import 'package:ecommerce/features/homepage/model/slide.dart';
import 'package:get/get.dart';

class HomeService {
  Future<List<SlideModel>> slide() async {
    try {
      var response = await DummyData.getSlides();
      var data = Slide.fromJson(response);
      print(response);
      return data.slides;
    } catch (e) {
      print(e);
      //print(data);
      throw ('error');
    }
  }

  Future<List<NewProductModel>> newProduct() async {
    try {
      var response = await DummyData.getproduct();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    } catch (e) {
      throw (e);
    }
  }
  Future<List<NewProductModel>> mostorder() async {
    try {
      var response = await DummyData.mostOrder();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    } catch (e) {
      throw (e);
    }
  }
  Future<List<NewProductModel>> categoryname() async {
    try {
      var response = await DummyData.categoryName();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    } catch (e) {
      throw (e);
    }
  }

  // Future<List<SlideModel>> getSlide() async {
  //   var data = await slide();
  //   var slideList = Slide.fromJson(data);
  //   print(slideList);
  //   return slideList.slides;
  // }
}
