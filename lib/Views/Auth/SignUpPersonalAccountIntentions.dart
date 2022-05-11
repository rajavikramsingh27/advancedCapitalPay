import 'package:advanced_capital_pay/Components/TitleStar.dart';

import '../../Components/TextFieldCustom.dart';
import '../SignUp/SignUpPersonalAuthorizedSignatures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Components/DropdownButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../../Components/ComponentsSignUp.dart';

class SignUpPersonalAccountIntentions extends StatelessWidget {
  const SignUpPersonalAccountIntentions({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress('39'),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ComponentsSignUp.title(
                                  'Account Opening Intentions',
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Complete the section below to inform our team about your Account Opening Intentions. ',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    // fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),




                                TitleStar.titleStar(
                                    'Which country will sending to',
                                    true
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                DropdownButtonCustom(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  colorBorder: Colors.black12,
                                  radiusBorder: 2,
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                  onChanged: (text) {

                                  },
                                  listValue: [
                                    'Nothing Selected',
                                  ],
                                  selectedValue: 'Nothing Selected',
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    TitleStar.titleStar(
                                        'Which currencies will you plan on exchangin to',
                                        true
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                DropdownButtonCustom(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  colorBorder: Colors.black12,
                                  radiusBorder: 2,
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                  onChanged: (text) {

                                  },
                                  listValue: [
                                    'Nothing Selected',
                                  ],
                                  selectedValue: 'Nothing Selected',
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    TitleStar.titleStar(
                                        'What are the reasons for your exchanges',
                                        true
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  maxLines: 5,
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'Please provide a detailed explanation At to what the reasons for your exchanges Will be.',
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  colorFill: ColorStyle.primaryWhite,
                                  colorBoder: Colors.black12,
                                  radiusBorder: 2,
                                ),

                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Frequceny of Payments',
                                    true
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                DropdownButtonCustom(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  colorBorder: Colors.black12,
                                  radiusBorder: 2,
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                  onChanged: (text) {

                                  },
                                  listValue: [
                                    'Daily',
                                    'Weekly',
                                    'Monthly',
                                    'Yearly'
                                  ],
                                  selectedValue: 'Daily',
                                ),
                                SizedBox(
                                  height: 16,
                                ),


                                Row(
                                  children: [
                                    TitleStar.titleStar(
                                        'Which countries do you personally hold Bank/FX accounts in*',
                                        true
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                DropdownButtonCustom(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  colorBorder: Colors.black12,
                                  radiusBorder: 2,
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                  onChanged: (text) {

                                  },
                                  listValue: [
                                    'Nothing Selected',
                                  ],
                                  selectedValue: 'Nothing Selected',
                                ),
                                SizedBox(
                                  height: 16,
                                ),


                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'What are the approximate amounts which will Be exchanged',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 68,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'AFA',
                                            style:
                                                TextStylesPoppins.textStyles_16.apply(
                                              color: ColorStyle.secondryBlack,
                                              // fontWeightDelta: 1,
                                            ),
                                          ),
                                          SizedBox(width: 6,),
                                          Image.asset(
                                            ImageStyle.caretdown,
                                            height: 10,
                                            color: ColorStyle.secondryBlack,
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorStyle.primaryWhite,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(2),
                                            bottomLeft: Radius.circular(2),
                                          ),
                                          border: Border.all(
                                              width: 1, color: Colors.black12)),
                                    ),
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: '100,000,00',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),

                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'State the name(s) of the Banks/Fx you pers',
                                  textStyle: TextStylesPoppins.textStyles_14.apply(
                                    color: Colors.black,
                                    fontWeightDelta: 1,
                                  ),
                                  colorFill: ColorStyle.primaryWhite,
                                  colorBoder: Colors.black12,
                                  radiusBorder: 2,
                                ),

                                ComponentsSignUp.backContinue(
                                    'Back to site', () {}, 'Continue', () {
                                  Get.to(SignUpPersonalAuthorizedSignatures());
                                })
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: EffectStyleSignUp.decoration()),
                  ComponentsSignUp.bottomUI(),
                ],
              ),
            )),
      ],
    );
  }
}
