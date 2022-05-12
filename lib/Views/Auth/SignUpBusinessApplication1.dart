import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpCorrespondenceAddress.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpBusinessApplication1 extends StatelessWidget {
  const SignUpBusinessApplication1({Key? key}) : super(key: key);

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
                                  ColorStyle.darkestBlueSignUp, 0)),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EffectStyle.padding(16, 16, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Business Profile',
                                  style: TextStylesPoppins.textStyles_20.apply(
                                    color: ColorStyle.secondryBlack,
                                    // fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Enter the data requires in sections below to complete your Business Profile.',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    // fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TitleStar.titleStar(
                                    'Legal Company name',
                                    true,
                                  14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'The name provided must exactly match',
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
                                    'Which currencies will you plan on exchanging to',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                CountryPicker(
                                  colorBG: ColorStyle.primaryWhite,
                                  colorBorder: Colors.black12,
                                  icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Year of Incorporation',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'Middle Name (Optional)',
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
                                    'Legal Status',
                                    true,
                                    14, FontWeight.w500
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
                                  onChanged: (text) {},
                                  listValue: [
                                    'Limited',
                                  ],
                                  selectedValue: "Limited",
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Company Registration Number',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'Please enter your company registration',
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
                                    'Nature of Business',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  maxLines: 2,
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'Provide a detailed explanation of the Nature of your business',
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
                                    'Business Telephone Number',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 1
                                    )
                                  ),
                                  child: Row(
                                    children: [
                                      CountryPickerPhoneCode(
                                        colorBG: ColorStyle.primaryWhite,
                                        colorBorder: Colors.transparent,
                                        icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                        padding: EffectStyle.padding(10, 0, 0, 0),
                                      ),
                                      Expanded(child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(0, 10, 10, 10),
                                        hintText: '',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.transparent,
                                        radiusBorder: 2,
                                      ),)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Additional Telephone Number ( if Applcable)',
                                    false,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                          color: Colors.black12,
                                          width: 1
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      CountryPickerPhoneCode(
                                        colorBG: ColorStyle.primaryWhite,
                                        colorBorder: Colors.transparent,
                                        icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                        padding: EffectStyle.padding(10, 0, 0, 0),
                                      ),
                                      Expanded(child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(0, 10, 10, 10),
                                        hintText: '',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.transparent,
                                        radiusBorder: 2,
                                      ),)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: 'please enter your personal email',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: Icon(Icons.question_mark,
                                          size: 18, color: Colors.grey),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: 'please enter your personal email',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: Icon(Icons.question_mark,
                                          size: 18, color: Colors.grey),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Regulatory body (Non-Compulstory)',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'if application, provide details of your company',
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
                                    'Registration Number with Regulatory (Non-Compulstory)',
                                    false,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFieldCustomOutline(
                                  padding: EffectStyle.padding(10, 10, 10, 10),
                                  hintText: 'If applicable, provide details of your company',
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
                                    'Business E-Mail Address',
                                    false,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: 'please enter your phone E-mail address',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: Icon(Icons.question_mark,
                                          size: 18, color: Colors.grey),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add,
                                        // size: 18,
                                        color: ColorStyle.darkestBlueSignUp),
                                    Text(
                                      'Add an additional Business Email Address',
                                      style: TextStylesPoppins.textStyles_13.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Business E-mail Address',
                                    true,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: 'Please enter your phone E-mail address',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: Icon(Icons.question_mark,
                                          size: 18, color: Colors.grey),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add,
                                        // size: 18,
                                        color: ColorStyle.darkestBlueSignUp),
                                    Text(
                                      'Add an additional Fax Number',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                TitleStar.titleStar(
                                    'Website Address Starting with http://',
                                    false,
                                    14, FontWeight.w500
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFieldCustomOutline(
                                        padding: EffectStyle.padding(10, 10, 10, 10),
                                        hintText: 'Enter business website in the format of http://',
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: Colors.black,
                                          fontWeightDelta: 1,
                                        ),
                                        colorFill: ColorStyle.primaryWhite,
                                        colorBoder: Colors.black12,
                                        radiusBorder: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      child: Icon(Icons.question_mark,
                                          size: 18, color: Colors.grey),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                    )
                                  ],
                                ),
                                ComponentsSignUp.backContinue(
                                    'Back to site', () {}, 'Continue', () {
                                  Get.to(SignUpCorrespondenceAddress(addressType: 'Busniess',));
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
