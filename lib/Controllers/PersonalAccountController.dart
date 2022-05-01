import 'package:get/get.dart';

class PersonalAccountController extends GetxController {
  RxInt index = 0.obs;

  reset() {
    index.value = 0;
  }
}
