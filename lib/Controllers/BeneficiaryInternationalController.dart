import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeneficiaryInternationalController extends GetxController {
  RxInt intAppBar = 0.obs;
  RxList<String> chooseBeneficiary = [
    'Local Beneficiaries',
    'International Beneficiaries',
  ].obs;

  RxBool isPersonal = true.obs;

  reset() {
    intAppBar.value = 0;
    isPersonal.value = true;
  }
}
