import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class PreferredLanguageSelection1Controller extends GetxController {
  RxList<String> choosePopular = [
    'GBP',
    'Eur',
    'USDT',
  ].obs;
  RxList<String> choosePopular3 = [
    'BTC',
    'USDT',
    'USDT',
  ].obs;
  RxList<String> choosePopular1 = [
    'British Pound',
    'Euro',
    'British Pound',
  ].obs;
  RxList<String> choosePopular4 = [
    'Bitcoin',
    'Tether (Erc20)',
    'Tether (Erc20)',
  ].obs;
  RxList<String> choosePopular2 = [
    ' £150,843.52',
    '€275,593.49',
    ' 150.843.52 USDT',
  ].obs;
  RxList<String> choosePopular5 = [
  ' £150,843.52',
    '24.898.56 USDT',
    ' S 20,414.07',
  ].obs;
  RxList<String> choosePopular6 = [
    ' 0.0492342 BTC',
    'S 24,918.52',
    'S 24,918.52',
  ].obs;
  RxList<String> choosePopular7 = [
    'AUD',
  ].obs;
  RxList<String> choosePopular8 = [
 'Australian Dollar',
  ].obs;
  RxList<String> choosePopular9 = [
  '0.00 AUD'

  ].obs;
  RxList<String> images1 = <String>[
    ImageStyle.English1,
    ImageStyle.tetherusdtlogo,
    ImageStyle.tetherusdtlogos,


  ].obs;
  RxList<String> images3 = <String>[
    ImageStyle.FlagofAustraliaconvertedsvg,

  ].obs;
  RxList<String> images2 = <String>[
    ImageStyle.bitcoinbtclogo,
    ImageStyle.tetherusdtlogos,
    ImageStyle.tetherusdtlogos,


  ].obs;

}
