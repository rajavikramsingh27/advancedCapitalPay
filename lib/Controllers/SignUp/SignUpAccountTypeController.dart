import 'package:get/get.dart';

class SignUpAccountTypeController extends GetxController {
  RxBool isPrivate = true.obs;

  reset() {
    isPrivate.value = true;
  }
}
