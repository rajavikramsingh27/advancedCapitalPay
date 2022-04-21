import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalApplication1Controller extends GetxController {
  RxString dropdownvalue = 'Choose City'.obs;
  RxList<String> items = [
    'Choose City',
    'Jaipur',
    'Kota',
    'Ajmer',
    'UttraKhand',
    'Madhya Pardesh',
    'Jhunjhunu',
  ].obs;
}
