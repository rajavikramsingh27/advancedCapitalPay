import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpPersonalFacialVerificationController extends GetxController {
  RxBool isAgree = false.obs;

  reset() {
    isAgree.value = false;
  }

}
