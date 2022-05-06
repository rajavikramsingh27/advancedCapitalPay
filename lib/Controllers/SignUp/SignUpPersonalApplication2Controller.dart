import 'package:get/get.dart';

class SignUpPersonalApplication2Controller extends GetxController {
  RxBool isCheck = false.obs;

  reset() {
    isCheck.value = false;
  }
}
