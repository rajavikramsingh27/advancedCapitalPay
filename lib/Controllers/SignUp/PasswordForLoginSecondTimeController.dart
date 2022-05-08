
import 'package:get/get.dart';

class PasswordForLoginSecondTimeController extends GetxController {

  RxBool isBioMatric = true.obs;

  reset() {
    isBioMatric.value = true;
  }
}