import 'package:ecommerce/data/api.dart';
import 'package:ecommerce/features/category/model/category.dart';

class CategoryService {
  Future<List<CategoryModel>> getCategory() async {
    
      
      var response = await DummyData.category();
      var data = Category.fromJson(response);
      return data.category;
    
  }
}
