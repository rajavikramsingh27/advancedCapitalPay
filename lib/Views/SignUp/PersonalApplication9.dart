import '../SignUp/PersonalApplication10.dart';
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




class PersonalApplication9 extends StatelessWidget {
  const PersonalApplication9({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress(7),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            'ACFVC8JTJ',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          width: 102,
                          height: 43,
                            decoration: EffectStyleSignUp.decoration(ColorStyle.darkestBlueSignUp)
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ComponentsSignUp.title(
                                'False Verification Process',
                              ),

                              ComponentsSignUp.backContinue('Back', () {

                              }, 'Continue', () {
                                Get.to(PersonalApplication10());
                              })
                            ],
                          ),
                        ),
                      ],
                    ),
                      decoration: EffectStyleSignUp.decoration()
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Please follow the instructions provided throughout '
                    ' the application to apply to on-board as an AdvanceCapitalClient. '
                    ' If you have previously started an application.',
                    style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.secondryBlack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    child: Text(
                      'Click Here.',
                      style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.darkestBlueSignUp,
                        fontWeightDelta: 2
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            )),
      ],
    );
  }
}
