import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isPersonal = true.obs;

  RxString dateOfBirth = '24-08-1982'.obs;

  final RxString employmentStatus = 'Employed'.obs;

  reset() {
    isPersonal.value = true;
  }
}
