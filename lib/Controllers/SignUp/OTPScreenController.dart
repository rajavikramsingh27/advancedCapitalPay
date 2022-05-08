import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreenController extends GetxController {
  Rx<TextEditingController> txtOTP_First = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Second = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Third = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Fourth = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Five = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Six = TextEditingController().obs;

  FocusNode focusFirst = FocusNode();
  FocusNode focusSecond = FocusNode();
  FocusNode focusThird = FocusNode();
  FocusNode focusFourth = FocusNode();
  FocusNode focusFive = FocusNode();
  FocusNode focusSix = FocusNode();

  reset() {

  }

  authenticate() {
    print(txtOTP_First.value.text);
    print(txtOTP_Second.value.text);
    print(txtOTP_Third.value.text);
    print(txtOTP_Fourth.value.text);

  }
}
