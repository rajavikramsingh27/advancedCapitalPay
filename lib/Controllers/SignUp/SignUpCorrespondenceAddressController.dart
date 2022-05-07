import 'package:get/get.dart';

class SignUpCorrespondenceAddressController extends GetxController {
  RxBool isCheck = false.obs;

  reset() {
    isCheck.value = false;
  }
}
