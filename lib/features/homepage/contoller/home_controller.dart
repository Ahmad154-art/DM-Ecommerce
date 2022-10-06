import 'dart:convert';

import 'package:ecommerce/features/homepage/model/newproductmodel.dart';
import 'package:ecommerce/features/homepage/service/home_service.dart';

import '../../../data/slides.dart';
import '../model/slide.dart';
import '../widgets/slide.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  //*****error */
  String haserror = '';
  RxBool error = true.obs;

  RxBool load = false.obs;

/******* */
  RxBool isLoading = true.obs;

  List<SlideModel> imageSlide = [];

  //*****new product group */
  List<NewProductModel> products = [];
  RxBool isLoading2 = true.obs;
  //******end */

  ///******most order */
  List<NewProductModel> orders = [];
  RxBool isLoading3 = true.obs;

  ///******end */
  ///*****category name */
  List<NewProductModel> category = [];
  RxBool isLoading4 = true.obs;

  ///**end */

  HomeService service = HomeService();
  void onpress() {
    load(true);
    slide();
  }

  Future<void> slide() async {
    try {
      imageSlide = await service.slide();

      isLoading(false);
      error(false);
      // haserror(false);

      update();

      print(imageSlide[0].id);
    } catch (e) {
      haserror = e.toString();

      isLoading(false);

      print(haserror);

      print(e);
      load(false);
    }
  }

  Future<void> getNewProduct() async {
    try {
      products = await service.newProduct();
      isLoading2(false);
      update();
      
      print(products);
    } catch (e) {}
  }

  void reload() {
    isLoading2(true);
  }

  Future<void> mostorder() async {
    try {
      orders = await service.mostorder();
      isLoading3(false);
      update();
      
      print(products);
    } catch (e) {}
  }

  Future<void> categoryName() async {
    try {
      category = await service.categoryname();
      isLoading4(false);
      update();
      
      print(products);
    } catch (e) {}
  }
}
