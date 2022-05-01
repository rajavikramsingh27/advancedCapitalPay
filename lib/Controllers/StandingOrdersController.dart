
import 'package:get/get.dart';

class StandingOrdersController extends GetxController {

  RxBool isPersonal = true.obs;

  reset() {
    isPersonal.value = true;
  }
}
