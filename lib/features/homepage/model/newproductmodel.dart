import 'dart:convert';

import 'package:flutter/cupertino.dart';

class NewProduct {
  List<NewProductModel> products = [];

  NewProduct({required this.products});

  factory NewProduct.fromJson(Map<String, dynamic> json) => NewProduct(
        products: List<NewProductModel>.from(
            json["product"].map((e) => NewProductModel.fromJson(e))),
      );
}

class NewProductModel {
  int id;
  String name;
  String price;
  String image;

  NewProductModel({required this.id, required this.name, required this.price,required this.image});

  factory NewProductModel.fromJson(Map<String, dynamic> json) =>
      NewProductModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
      );
  // SlideModel.fromJson(Map<String, dynamic> json)
  //     : name = json["name"],
  //       image = json["image"];

  Map<String, dynamic> toJson() => {"id": id, "name": name,"price":price ,"image": image};
}
