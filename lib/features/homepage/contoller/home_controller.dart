import 'package:ecommerce/features/homepage/model/newproductmodel.dart';
import 'package:ecommerce/features/homepage/service/home_service.dart';
import 'package:rx_future/rx_future.dart';

import '../../../common/logic/state.dart';
import '../model/slide.dart';

import 'package:get/get.dart';

// enum state { isLoading }
//  class MyState<T1, T2> {
//   T1? state1;
//   T2? state2;
//   MyState({this.state1, this.state2});
// }

class HomeScreenController extends GetxController with StateMixin {
  WidgetState<List<SlideModel>> myClass = WidgetState();
  WidgetState<List<NewProductModel>> myClass1 = WidgetState();
  WidgetState<List<NewProductModel>> myClass2 = WidgetState();
  WidgetState<List<NewProductModel>> myClass3 = WidgetState();
  HomeService service = HomeService();

  Future<void> slide() async {
    await myClass.state(service.slide);
  }

  Future<void> getNewProduct() async {
    await myClass1.state(service.newProduct);
  }

  Future<void> mostorder() async {
    await myClass2.state(service.mostorder);
  }

  Future<void> categoryName() async {
    await myClass3.state(service.categoryname);
  }
}
