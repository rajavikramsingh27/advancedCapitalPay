import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPersonalOriginOfWealthController extends GetxController {
  RxList<bool> chooseOriginofWealthSelected = [false].obs;

  RxList<bool> arrSelected = [false].obs;

  RxList<String> arrOriginOfWealth = [
    'Generic Source',
    'Sale of a Property',
    'Geared Loan',
    'Company Sale',
    "Policy Claim / Maturing Investment",
    "Compensation",
    "Inheritance",
    "Individual policy/ Company Pay Premium",
    "Sale of Share / Other investment",
    "Receving a Gift",
    "Lottery / Betting / casino / Win",
    "Other Monies",
  ].obs;

  reset() {
    arrSelected.clear();
    for (int i=0; i<arrOriginOfWealth.length; i++) {
      arrSelected.add(false);
    }
  }

}
