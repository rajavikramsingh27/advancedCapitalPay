import 'package:get/get.dart';

class SignUpPersonalApplication1Controller extends GetxController {
  RxBool isEmailAddtional = false.obs;
  RxBool isPhoneAddtional = false.obs;

  RxList<String> items = [
    'Select a question ?',
    'What is the first name of your best friend?',
    'What is the last name of your favourite elementary school teacher?',
  ].obs;

  RxString selectedValueOne = 'What is the first name of your best friend?'.obs;
  RxString selectedValueTwo =
      'What is the last name of your favourite elementary school teacher?'.obs;

  RxString selectedValueThree =
      'What is the last name of your favourite elementary school teacher?'.obs;

  reset() {
    isEmailAddtional.value = false;
    isPhoneAddtional.value = false;
  }
}
