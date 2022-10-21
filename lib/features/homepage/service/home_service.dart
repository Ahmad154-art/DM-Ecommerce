import 'dart:convert';

import 'package:ecommerce/data/api.dart';
import 'package:ecommerce/data/slides.dart';
import 'package:ecommerce/features/homepage/model/newproductmodel.dart';
import 'package:ecommerce/features/homepage/model/slide.dart';
import 'package:get/get.dart';

class HomeService {
  Future<List<SlideModel>> slide() async {
   
      var response = await DummyData.getSlides();
      var data = Slide.fromJson(response);
      print(response);
      return data.slides;
    
      
      //print(data);
    
  }

  Future<List<NewProductModel>> newProduct() async {
    
   //   print("getting products");
      var response = await DummyData.getproduct();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    
  }

  Future<List<NewProductModel>> mostorder() async {
    
      var response = await DummyData.mostOrder();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    
  }

  Future<List<NewProductModel>> categoryname() async {
    
      var response = await DummyData.categoryName();
      var data = NewProduct.fromJson(response);
      print(response);
      return data.products;
    
  }

  // Future<List<SlideModel>> getSlide() async {
  //   var data = await slide();
  //   var slideList = Slide.fromJson(data);
  //   print(slideList);
  //   return slideList.slides;
  // }
}
