
import 'package:get/get.dart';

class NewBeneficiaryController extends GetxController {
  RxString departureDate = ''.obs;
  RxString returnDate = ''.obs;

  RxList<bool> arrSelectOption = [false].obs;
  RxList<bool> arrSelectOptionIcons = [false].obs;

  RxInt  index = 1.obs;

  reset() {
    index.value = 1;
    arrSelectOption.clear();
    arrSelectOptionIcons.clear();

    Future.delayed(Duration(milliseconds: 200), () {
      for (int i = 0; i < 4; i++) {
        arrSelectOption.add((i == 0) ? true : false);
        arrSelectOptionIcons.add((i == 0) ? true : false);
      }
    });
  }
}
