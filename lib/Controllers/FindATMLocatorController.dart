import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindATMLocatorController extends GetxController {
  RxDouble rangeValue = 0.0.obs;

  RxList<String> arrATMNames = [
    'HSBS ATM',
    'ADCB ATM',
    'HSBS ATM',
    'ADCB ATM',
  ].obs;
  RxList<String> arrATMLocation = [
    'Choithram Supermarket',
    'Khalid Bin Waleed Branch',
    'Choithram Supermarket',
    'Khalid Bin Waleed Branch',
  ].obs;
  RxList<String> arrATMDistance = [
    '500 meters',
    '800 meters',
    '500 meters',
    '800 meters',
  ].obs;

  reset() {}
}
