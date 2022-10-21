import 'package:get/get.dart';

class WidgetState<T> {
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  T? result;

  Future<void> state(Future<T> Function() observe) async {
    isLoading(true);
    try {
      result = await observe();
      isLoading(false);
    } catch (e) {
      print(e);
      print('eeeeeeeeeeeeee');
      isLoading(false);
      hasError(true);
      //   throw e;
    }
  }
}
