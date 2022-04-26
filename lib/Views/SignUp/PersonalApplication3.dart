import '../SignUp/PersonalApplication4.dart';
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
import '../SignUp/ComponentsSignUp.dart';

class PersonalApplication3 extends StatelessWidget {
  const PersonalApplication3({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress(2),
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
                                  'What type of account would you Like to apply for?',
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Please select from below which best describes  the application you wish to apply for. ',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Container(
                                  padding: EffectStyle.padding(16, 16, 0, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          ImageStyle.vector,
                                          height: 60,
                                          color: ColorStyle.darkestBlueSignUp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Private Individual',
                                        style: TextStyles.textStyles_20.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'I am private individual',
                                        style: TextStyles.textStyles_14.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(child: Text(
                                            'Details required through On-Boarding Application Process',
                                            style: TextStyles.textStyles_12
                                                .apply(
                                              color:
                                              ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(child: Text(
                                            'Original KYC Documentation required with Offical English Versions (Certified Translations)',
                                            style: TextStyles.textStyles_12
                                                .apply(
                                              color:
                                              ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Facial Verification',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Detailed Source of Wealth',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Source of Funds',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Purpose of Account Opening',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'English Signature',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          ComponentsSignUp.check(),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Additional Details',
                                            style:
                                                TextStyles.textStyles_12.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      DropdownButtonCustom(
                                        iconWidget: Image.asset(
                                          ImageStyle.dropDown,
                                          height: 16,
                                        ),
                                        colorBorder: Colors.grey,
                                        onChanged: (text) {},
                                        listValue: [
                                          'LITE',
                                          'Free accounf',
                                        ],
                                        selectedValue: "LITE",
                                      ),
                                      SizedBox(
                                        height: 22,
                                      ),
                                    ],
                                  ),
                                  decoration: EffectStyleSignUp.decoration(
                                      ColorStyle.hex('#F2FCFE'), 8),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  padding: EffectStyle.padding(16, 16, 0, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          ImageStyle.vector,
                                          height: 60,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Business',
                                        style: TextStyles.textStyles_20.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'I am a business(Limited, Pte, Ltd, LLC, AG Trust, Corporated, Partnership, sole Trader or other)',
                                        style: TextStyles.textStyles_14.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  padding: EffectStyle.padding(16, 16, 0, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Advance Capital Resrticted Country List',
                                        style: TextStyles.textStyles_20.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Text(
                                        'Advance Capital follows and adheres to strict guidelines outlined by the FAFF which provides '
                                        ' restrictions for selected countries. Please be aware restricted countries outlined by the FATF'
                                        ' guidlince we are unable to open an account for or to allow transaction to occure.',
                                        style: TextStyles.textStyles_14.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                    ],
                                  ),
                                ),
                                ComponentsSignUp.backContinue('Back to site', () {

                                }, 'Continue', () {
                                  Get.to(PersonalApplication4());
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
