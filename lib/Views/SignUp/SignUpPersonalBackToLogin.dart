import '../../Views/SignIn.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../../Components/ComponentsSignUp.dart';

class SignUpPersonalBackToLogin extends StatelessWidget {
  const SignUpPersonalBackToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.bg_1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 16),
              child: Column(
                children: [
                  Image.asset(
                    ImageStyle.application,
                    width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fill,
                    // height: heightAppBar,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ComponentsSignUp.topProgress('100'),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      decoration: EffectStyleSignUp.decoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            child: Text(
                              'ACFVC8JTJ',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 1,
                              ),
                            ),
                            alignment: Alignment.center,
                            width: 102,
                            height: 43,
                            decoration: EffectStyleSignUp.decoration(
                                ColorStyle.darkestBlueSignUp)),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'You have successfully submitted Your AdvanceCapitalPay On-Boarding Application',
                                textAlign: TextAlign.center,
                                style: TextStylesPoppins.textStyles_22.apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'AdvanceCapitalPay Compliance Division '
                                    ' will review the information processed within '
                                    ' your application. You will receive an e-mail '
                                    ' shortly to confirm the status of your on-boarding '
                                    ' application. If you would like to find out the status '
                                    ' of your application please do not hesitate to contact '
                                    ' info@AdvanceCapitalPay.com',
                                textAlign: TextAlign.center,
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              ElevatedButtonCustom(
                                text: 'Back To Login',
                                colorBG: ColorStyle.darkestBlueSignUp,
                                colorBorder: ColorStyle.grey,
                                radiusBorder: 4,
                                textStyle: TextStylesPoppins.textStyles_16.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1),
                                onTap: () {
                                  Get.offAll(SignIn());
                                },
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'If you need any assistance or would like '
                                    ' to make any alterations towards your submitted '
                                    ' application please feel free to contact our Compliance '
                                    ' Division who will be happy to assist you ',
                                textAlign: TextAlign.center,
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),
                              Text(
                                'compliance@AdvanceCapitalPay.com ',
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ComponentsSignUp.bottomUI(),
                ],
              ),
            )),
      ],
    );
  }
}
