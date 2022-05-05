
import 'package:get/get.dart';

class CryptoRecieveAmountController extends GetxController {

  RxInt numberCopySetAmountShare = 0.obs;

  reset() {
    numberCopySetAmountShare.value = 0;
  }

}