import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';

class YourCardController extends GetxController {
  RxInt indexPage = 0.obs;

  RxList<String> arrCardsImage = [
    ImageStyle.card_1,
    ImageStyle.card_2,
  ].obs;

  RxList<String> arrTitles =
      ['Free virtual card', 'Contactless debit card'].obs;
  RxList<String> arrDescription = [
    'Create your free virtual card. Use it with Apple Pay and anywhere online that accept Mastercard',
    'Receive your card and start spending in-store and online'
  ].obs;

  RxList<String> arrButtonTitle =
      ['Create virtual card', 'Order your card'].obs;

  RxBool status = false.obs;

  RxList<String> arrCardSettingsIcons = [
    ImageStyle.creditcar,
    ImageStyle.cashlesspayment,
    ImageStyle.moneywithdrawal,
    ImageStyle.atm,
    ImageStyle.warning,
    ImageStyle.changePIN,
    ImageStyle.lock,
    ImageStyle.creditca,
    ImageStyle.information,
  ].obs;

  RxList<String> arrCardSettingsTitle = [
    'Contactless Payment',
    'Online Payment',
    'ATM Withdrawals',

    'ATM Locator',
    'Add or Change a Travel Notice',
    'change Your PIN',

    'Card Lock',
    'Replace Debit Card',
    'Card Information',
  ].obs;

  RxList<bool> arrButtonSwitchType = [
    true,
    true,
    true,

    false,
    false,
    false,

    true,
    false,
    false,
  ].obs;

  RxList<bool> arrButtonSwitchValue = [
    false,
    false,
    false,

    false,
    false,
    false,

    false,
    false,
    false,
  ].obs;

  reset() {}
}
