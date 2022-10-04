import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Slide {
  List<SlideModel> slides = [];

  Slide({required this.slides});

  factory Slide.fromJson(Map<String, dynamic> json) => Slide(
    slides: List<SlideModel>.from(json["slides"].map((e) => SlideModel.fromJson(e))),

  );
  
}

class SlideModel {
  int id;
  String name;
  String image;

  SlideModel({required this.id, required this.name, required this.image});

  factory SlideModel.fromJson(Map<String, dynamic> json) => SlideModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );
  // SlideModel.fromJson(Map<String, dynamic> json)
  //     : name = json["name"],
  //       image = json["image"];

  Map<String, dynamic> toJson() => {"id": id, "name": name, "image": image};
}















