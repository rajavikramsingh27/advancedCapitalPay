import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';
import '../Views/OnBoarding.dart';
import '../Components/BackgroundImage.dart';


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