import 'package:advanced_capital_pay/Views/SignUp/EffectStyleSignUp.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class ApplyPay extends StatelessWidget {
  const ApplyPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'Apply P',)))]);}}