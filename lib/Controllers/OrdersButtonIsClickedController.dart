import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersButtonIsClickedController extends GetxController {

  RxList<String> chooseSaving = [
    '1m',
    '5m',
    '15m',
    '1h',
    '1m',
    '...',
  ].obs;
  RxList<String> chooseSaving2 = [
    'To buy',
    'To sell',
    'Order book',
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

}
