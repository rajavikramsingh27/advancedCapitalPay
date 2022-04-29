import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavingGoalController extends GetxController {
  RxInt listCount = 3.obs;

  RxList<String> images = <String>[
    ImageStyle.watchBG,
    ImageStyle.watchBG,
    ImageStyle.watchBG,
  ].obs;

  reset() {}
}
