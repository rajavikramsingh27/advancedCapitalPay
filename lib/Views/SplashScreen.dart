import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Views/StartScreen.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      Get.to(StartScreen());
    });

    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Center(
              child: Image.asset(
            ImageStyle.logo,
            height: 203,
          ))
        ],
      ),
    );
  }
}
