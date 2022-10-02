// To parse this JSON data, do
//
//     final slides = slidesFromJson(jsonString);

import 'dart:convert';

Slides slidesFromJson(String str) => Slides.fromJson(json.decode(str));

String slidesToJson(Slides data) => json.encode(data.toJson());

class Slides {
    Slides({
      required  this.slides,
    });

    List<SlideModel> slides;

    factory Slides.fromJson(Map<String, dynamic> json) => Slides(
        slides: List<SlideModel>.from(json["slides"].map((x) => SlideModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "slides": List<dynamic>.from(slides.map((x) => x.toJson())),
    };
}

class SlideModel {
    SlideModel({
     required   this.name,
      required  this.image,
    });

    String name;
    String image;

    factory SlideModel.fromJson(Map<String, dynamic> json) => SlideModel(
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
    };
}




// import 'dart:convert';

// SlideModel slideFromJson(String str) => SlideModel.fromJson(json.decode(str));


// class SlideModel {
//   String image;
//   String name;
//   SlideModel({required this.image, required this.name});

//  factory SlideModel.fromJson(Map<String , dynamic> json) => SlideModel (
  
//   name: json["name"],
//   image: json["image"],

// );


// }
