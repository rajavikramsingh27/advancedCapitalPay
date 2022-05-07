
import 'package:get/get.dart';

class SignUpPersonalAdvanceCapitalPayController extends GetxController {
  RxBool isAgreed = false.obs;

  reset() {
    isAgreed.value = true;
  }
}