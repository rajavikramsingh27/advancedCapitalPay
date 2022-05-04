
import 'package:get/get.dart';

class TransferBetweenAccountController extends GetxController {
  RxInt  index = 0.obs;

  RxBool isFurtherNotice = false.obs;

  reset() {
    index.value = 0;
  }
}
