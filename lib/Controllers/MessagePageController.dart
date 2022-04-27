import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePageController extends GetxController {
  RxBool agree = false.obs;
  RxInt listType = 1.obs;
  RxBool isInbox = true.obs;

  reset() {
    listType.value = 1;
    isInbox.value = true;
  }


}
