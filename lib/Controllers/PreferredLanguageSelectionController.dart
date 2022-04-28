import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';


class PreferredLanguageSelectionController extends GetxController {
  RxInt intAppBar = 0.obs;



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
    intAppBar.value = 0;
  }
}
