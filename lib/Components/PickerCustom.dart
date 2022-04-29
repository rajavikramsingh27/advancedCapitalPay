
import 'package:flutter/material.dart';
import 'dart:async';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Styles/EffectStyle.dart';
import 'package:get/get.dart';

import '../Components/ButtonCustom.dart';
import '../Controllers/NewBeneficiaryController.dart';
import 'package:intl/intl.dart';



class PickerCustom {
   static datePicker(String dateFormat) async {
    DateTime selectedDate = DateTime.now();

    final DateTime? picked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2500));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      final DateFormat format = DateFormat(dateFormat);
      return format.format(picked);
    }
  }
}