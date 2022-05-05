
import 'package:get/get.dart';

class CryptoRequestAmountController extends GetxController {
  RxInt numberCopySetAmountShare = 0.obs;

  reset() {
    numberCopySetAmountShare.value = 0;
  }
}