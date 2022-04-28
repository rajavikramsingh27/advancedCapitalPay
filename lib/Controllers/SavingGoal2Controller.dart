import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class SavingGoal2Controller extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.kFC_logo,
    ImageStyle.starbuckslogopngtransparent,
    ImageStyle.new_spinneys_logo


  ].obs;
  RxList<String> images1 = <String>[
    ImageStyle.coin2,
    ImageStyle.payment4,
  ].obs;

  RxList<String> chooseSaving = [
    'Spare change',
    'Recurring payment ',



  ].obs;

  RxList<String> chooseSaving1 = [

    'Round-Up ',
    'S 10.00 / 9th day of the month',


  ].obs;


  RxList<String> chooseActivity = [
    'KFC',
    'Starsbucks',
    'Girls Fashion',
    'Spinneys',

  ].obs;


  RxList<String> chooseDoller = [
    '+ S 1.90',
    '+ S 2.50',
    '+ S 20.45',
    'Spinneys',

  ].obs;

  RxList<String> chooseTime = [
    '22:31',
    '21:45',
    '12:44',


  ].obs;

  // reset() {
  //   chooseActivitySelected.clear();
  //   for (int i=0; i<chooseActivity.length; i++) {
  //     chooseActivitySelected.add(false);
  //   }
  //   chooseDollerSelected.clear();
  //   for (int i=0; i<chooseDoller.length; i++) {
  //     chooseDollerSelected.add(false);
  //   }
  //   chooseTimeSelected.clear();
  //   for (int i=0; i<chooseTime.length; i++) {
  //     chooseTimeSelected.add(false);
  //   }
  // }

}
