
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';


class CryptoDialogBottomSheet {
  static bottomsheetGet(Widget widget) {
    return Get.bottomSheet(
      Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              width: MediaQuery.of(Get.context!).size.width,
              height: MediaQuery.of(Get.context!).size.height,
              decoration: BoxDecoration(
                color: ColorStyle.hex('#263767').withOpacity(0.2),
              ),
              // color: Colors.red,
            ),
          ),
          widget,
        ],
      ),
      enterBottomSheetDuration: Duration(milliseconds: 100),
      exitBottomSheetDuration: Duration(milliseconds: 100),
      isScrollControlled: true,
    );
  }
}