import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDashboardController extends GetxController {
  RxInt listType = 1.obs;

  reset() {
    listType.value = 1;
  }
}
