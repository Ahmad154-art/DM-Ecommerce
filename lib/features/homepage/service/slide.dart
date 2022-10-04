import 'dart:convert';

import 'package:ecommerce/data/api.dart';
import 'package:ecommerce/data/slides.dart';
import 'package:ecommerce/features/homepage/model/slide.dart';
import 'package:get/get.dart';

class SlideService {
  Future<Map<String, dynamic>> slide() async {
    var response = await DummyData.getSlides();
    //  var data = await SlideModel.fromJson(response);
    print(response);
    return response;
  }

  Future<List<SlideModel>> getSlide() async {
    var data = await slide();
    var slideList = Slide.fromJson(data);
    print(slideList);
    return slideList.slides;
  }
}
