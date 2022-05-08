import 'package:get/get.dart';

class PersonalAccountController extends GetxController {
  RxInt index = 0.obs;

  RxInt isBankSearchType = 0.obs;

  RxString bankName = ''.obs;
  RxString bankCode = ''.obs;
  RxList<String> arrTitles = [''].obs;
  RxList<String> arrSubTitles = [''].obs;
  RxList<String> arrBankDetailsTitles = [''].obs;
  RxList<String> arrBankDetailsValue = [''].obs;

  reset() {
    index.value = 0;
    isBankSearchType.value = 0;

    arrTitles.clear();
    arrSubTitles.clear();
    arrBankDetailsTitles.clear();
    arrBankDetailsValue.clear();
  }
}
