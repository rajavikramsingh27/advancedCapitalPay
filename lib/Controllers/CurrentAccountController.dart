import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class CurrentAccountController extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.Card,
  ].obs;

  RxList<String> chooseSaving = [
    'Current Account',
  ].obs;

  RxList<String> chooseSaving1= [
    '033465757884'
  ].obs;
  RxList<String> chooseSaving2= [
    'Balance'
  ].obs;
  RxList<String> chooseSaving3= [
    'GBP 510,630.50'
  ].obs;



}
