import 'package:get/get.dart';

class FavoriteScreenController extends GetxController {
  RxBool favorite = true.obs;
  void onClick(index) {
    favorite.value = !favorite.value;
  }
}
