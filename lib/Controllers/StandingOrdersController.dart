
import 'package:get/get.dart';

class StandingOrdersController extends GetxController {

  RxBool isPersonal = true.obs;
  RxBool isFurtherNotice = false.obs;
  RxBool isEditOrder = false.obs;

  reset() {
    isPersonal.value = true;
    isFurtherNotice.value = false;
    isEditOrder.value = false;
  }
}
