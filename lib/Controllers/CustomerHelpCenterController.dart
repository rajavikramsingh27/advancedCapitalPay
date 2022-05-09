import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomerHelpCenterController extends GetxController {



  RxList<String> helpCenterOne = [
    'Report Suspicious Activity',
    'Lost or Stolen Cards',
    'Suspected Fraud',
    'Lost access to my registered mobile or security questions',
  ].obs;



  RxList<String> helpCenterTwo = [
    'Notification Settings',
    'ATM Locator',
    'Saving Goals',
   'My Profile',
    'Preferred Language Selection',
  ].obs;




  RxList<String> helpCenterThree = [
    'Terms and Conditions',
    'Fees and Limits',
    'Privacy Policy',
  'Cookies Policy',
    'Anti-Corruption and Bribery',
    'Modern Slavery Act Statement',
    'Acceptable Use Policy',
    'Human Rights Policy',

  ].obs;



  RxList<String> helpCenterFour = [
  'How to protect yourself against Fraudsters',
 'What is phishing?',
 'What is SMS phishing?',
'What is Voice Phishing?',
    'Redirection of Funds',
    'SIM Swap',
  ].obs;



}
