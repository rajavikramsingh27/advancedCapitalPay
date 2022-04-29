import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AccountDetailsConroller extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.Card,

  ].obs;
  RxList<String> images1 = <String>[
    ImageStyle.Iconawesomecopy,

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
  RxList<bool> chooseAccountDetailss = [false, false,false,false, false,false].obs;
  RxList<String> chooseAccountDetails= [
    'Account Number',
    'Sort Code',
    'IBAN Number',
    'SWIFT Code',
    'Account Reference',
    'Account Type',
    'Account Status',

  ].obs;


}
