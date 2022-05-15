import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import '../Components/BioMatricAuth.dart';

class BioMatric_VerificationController extends GetxController {
  RxInt verifyStep = 0.obs;

  RxBool isFaceID = true.obs;

  // android:name=".MainActivity"

  reset() {
    isFaceID.value = true;

    verifyStep.value = 0;

    // Future.delayed(Duration(milliseconds: 600), () {
    //   verifyStep.value = 1;
    //   Future.delayed(Duration(milliseconds: 600), () {
    //     verifyStep.value = 2;
    //     Future.delayed(Duration(milliseconds: 600), () {
    //       verifyStep.value = 3;
    //     });
    //   });
    // });
  }
}
