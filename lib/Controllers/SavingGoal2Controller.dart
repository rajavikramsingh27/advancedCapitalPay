import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class SavingGoal2Controller extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.kFC_logo,
    ImageStyle.starbuckslogopngtransparent,
    ImageStyle.new_spinneys_logo


  ].obs;
  RxList<bool> chooseActivitySelected =
      [false].obs;
  RxList<String> chooseActivity = [
    'KFC',
    'Starsbucks',
    'Girls Fashion',
    'Spinneys',

  ].obs;

  RxList<bool> chooseDollerSelected =
      [false].obs;
  RxList<String> chooseDoller = [
    '+ S 1.90',
    '+ S 2.50',
    '+ S 20.45',
    'Spinneys',

  ].obs;

  reset() {
    chooseActivitySelected.clear();
    for (int i=0; i<chooseActivity.length; i++) {
      chooseActivitySelected.add(false);
    }
  }

}
