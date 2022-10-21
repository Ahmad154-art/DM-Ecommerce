import 'dart:math';

import 'package:ecommerce/features/category/model/category.dart';
import 'package:ecommerce/features/category/service/category.dart';
import 'package:get/get.dart';
import 'package:rx_future/rx_future.dart';

import '../../../common/logic/state.dart';

class CategoryController extends GetxController {
  WidgetState<List<CategoryModel>> myClass = WidgetState();

  CategoryService service = CategoryService();
  Future<void> getData() async {
    await myClass.state(service.getCategory);
  }
}
