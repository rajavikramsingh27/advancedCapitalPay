import 'package:get/get.dart';

class AccountDetailsRecoveryController extends GetxController {
  RxList<String> arrPasswordStrngh = [
    'Use 6 to 64 Characters.',
    'Besides letters, include at least a number or symbol (!@#\$%>\$*-+)',
    'Password is case sensitive',
    'Avoid using the same password for multiple sites.',
  ].obs;
  
  RxList<bool> arrSelectOption = [false].obs;
  RxList<bool> arrSelectOptionIcons = [false].obs;

  RxBool isUserIdentification = false.obs;
  RxBool isIdentifiy = false.obs;

  reset() {
    arrSelectOption.clear();
    arrSelectOptionIcons.clear();

    // Future.delayed(Duration(milliseconds: 300), () {
      for (int i = 0; i < 4; i++) {
        arrSelectOption.add((i == 0) ? true : false);
        arrSelectOptionIcons.add((i == 0) ? true : false);
      }
    // });
  }
}
