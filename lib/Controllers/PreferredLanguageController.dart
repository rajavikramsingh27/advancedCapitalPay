import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';


class PreferredLanguageController extends GetxController {
  RxList<bool> arrSelect = [false].obs;



  RxList<String> images = <String>[
    ImageStyle.English,
    ImageStyle.Deutsch,
    ImageStyle.Turkce,
    ImageStyle.Easti,
    ImageStyle.Esponol,
    ImageStyle.Francais,
    ImageStyle.Italiano,
    ImageStyle.Lietuviu,
    ImageStyle.Polski,
    ImageStyle.Romanion,



  ].obs;
  RxList<String> chooseLanguage = [
    'English',
    'Deutsch',
    'Turkce',
    'Easti',
    'Esponol',
    'Francais',
    'Italiano',
    'Lietuviu',
    'Polski',
    'Romanion',


  ].obs;
  reset() {
    arrSelect.clear();

    for (int i = 0; i<chooseLanguage.length; i++) {
      arrSelect.add((i==0) ? true : false);
    }
  }
}
