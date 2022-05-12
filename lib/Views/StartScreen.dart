import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Views/OnBoarding.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(OnBoarding());
    });

    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Center(
              child: Image.asset(
                ImageStyle.appIcon,
                height: 120,
              ))
        ],
      ),
    );
  }
}