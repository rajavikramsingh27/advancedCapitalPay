import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class PrivatePopUpController extends GetxController {
  RxList<String> choosePrivate = [
    'LITE',
    'Starter',
    'Plus',
    'Premium',
  ].obs;
  RxList<String> choosePrivate1 = [
    'Free account',
    '£2.25/m',
    '£4.85/m',
    '£11.50/m',
  ].obs;
  RxList<String> choosePopularImages = <String>[
    ImageStyle.signup1,
    ImageStyle.signup2,
    ImageStyle.signup3,
    ImageStyle.signup4,


  ].obs;

}
