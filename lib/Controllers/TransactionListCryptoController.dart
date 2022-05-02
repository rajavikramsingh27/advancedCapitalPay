
import 'package:get/get.dart';

class TransactionListCryptoController extends GetxController {
  RxInt indexTimeInterval = 0.obs;

  reset() {
    indexTimeInterval.value = 0;
  }
}