import 'dart:convert';

import 'package:ecommerce/features/homepage/service/slide.dart';

import '../../../data/slides.dart';
import '../model/slide.dart';
import '../widgets/slide.dart';
import 'package:get/get.dart';

class ImageSlideController extends GetxController {
  List<SlideModel> imageSlide = [];
  List<String> image = [];
  List<String> name = [];
  // SlideService service = SlideService();
  // void slide() {
  //   var response = SlideModel.fromJson(data);
  //   for (int i = 0; i < image.length; i++) {
  //     name.add(response.name);
  //     image.add(response.image);

  //   }
  //   print(image[0]);

  // }
  // Future<void> slide() async {
  //   imageSlide = await service.slide();
  //   print(imageSlide[0].image);
  // }
  ///******** */
  // @override
  // void onInit() async{
  //   imageSlide = await service.slide();
  //   print(imageSlide[0].image);
  //   super.onInit();
  // }
}
