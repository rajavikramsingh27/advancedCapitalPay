import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoOrdersController extends GetxController {

  RxList<String> chooseSaving = [
    '1m',
    '5m',
    '15m',
    '1h',
    '1m',
    '...',
  ].obs;

  RxList<String> chooseSaving3 = [
    'Limit',
    'Market',
    'Stop-limit',
  ].obs;
  RxList<String> chooseSaving4 = [
    'Currency',
    'Information',
    'Finalized',
    'Cancel All',
  ].obs;

  RxList<String> arrTradeNumbers = [
    '64,000.00',
    '63,000.00',
    '62,000.00',
    '61,000.00',
    '60,000.00',
    '59,000.00',
    '68,000.00',
  ].obs;

    RxList<bool> arrTradeNumbersSelected = [false].obs;
    RxList<bool> arrSelectedMonths = [false].obs;

    RxBool isOrder = true.obs;
    RxDouble rangeValue = 30.0.obs;

  reset() {
    rangeValue.value = 30;
    isOrder.value = true;

    arrSelectedMonths.clear();
    for (int i=0; i<chooseSaving.length; i++) {
      arrSelectedMonths.add((i==0) ? true : false);
    }

    arrTradeNumbersSelected.clear();
    for (int i=0; i<chooseSaving.length; i++) {
      arrTradeNumbersSelected.add((i==0) ? true : false);
    }
  }

}
