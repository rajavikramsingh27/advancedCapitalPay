import 'package:get/get.dart';

class VerifyQuestionController extends GetxController {
  RxList<String> items = [
    'Select a question ?',
    'What is the first name of your best friend?',
    'What is the last name of your favourite elementary school teacher?',
  ].obs;

  RxString selectedValueOne = 'What is the first name of your best friend?'.obs;
  RxString selectedValueTwo = 'What is the last name of your favourite elementary school teacher?'.obs;

  reset() {}
}
