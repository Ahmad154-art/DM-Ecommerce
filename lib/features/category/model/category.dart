class Category {
  List<CategoryModel> category = [];
  Category({required this.category});

  factory Category.fromJson(Map<String , dynamic> json)=>
  Category(category:List<CategoryModel>.from(json["category"].map((e) => CategoryModel.fromJson(e)))
  );
}

class CategoryModel {
  int id;
  String name;
  String image;
  CategoryModel({required this.id, required this.name, required this.image});
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      CategoryModel(id: json["id"], name: json["name"], image: json["image"]);
}
