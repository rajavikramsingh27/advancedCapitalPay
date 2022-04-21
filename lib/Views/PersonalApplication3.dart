import 'package:advanced_capital_pay/Views/PersonalApplication4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

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
              padding: EffectStyle.padding(16, 16, 0, 0),
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
                  Row(
                    children: [
                      Text(
                        'Your progress',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' 0%',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.blueLight,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' complete',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 4,
                      width: 14,
                      decoration: BoxDecoration(color: ColorStyle.blueLight),
                    ),
                    height: 4,
                    decoration: BoxDecoration(color: Colors.black12),
                  ),
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
                          decoration:
                          BoxDecoration(color: ColorStyle.blueSKY),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What type of account would you Like to apply for?',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
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
                                    child:   Image.asset(
                                      ImageStyle.vector,
                                      height: 60,
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                               color: ColorStyle.blueLight,
                                              borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Details required through On-Boarding ',
                                              style: TextStyles.textStyles_12.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Text(
                                              ' Application Process',
                                              style: TextStyles.textStyles_12.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Original KYC Documentation required',
                                              style: TextStyles.textStyles_12.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Text(
                                              'with Offical English Versions',
                                              style: TextStyles.textStyles_12.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Text(
                                              '(Certified Translations)',
                                              style: TextStyles.textStyles_12.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Facial Verification',
                                          style: TextStyles.textStyles_12.apply(
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Detailed Source of Wealth',
                                          style: TextStyles.textStyles_12.apply(
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Source of Funds',
                                          style: TextStyles.textStyles_12.apply(
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Purpose of Account Opening',
                                          style: TextStyles.textStyles_12.apply(
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'English Signature',
                                          style: TextStyles.textStyles_12.apply(
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
                                        Container(

                                          child: Icon(
                                            Icons.check,
                                            size: 18,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.blueLight,
                                            borderRadius: BorderRadius.circular(20),

                                          ),

                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Additional Details',
                                          style: TextStyles.textStyles_12.apply(
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
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                    Border.all(width: 2, color: ColorStyle.blueLight)),
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
                                      child:   Image.asset(
                                        ImageStyle.vector,
                                        height: 60,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Bussiness',

                                      style: TextStyles.textStyles_20.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'I am a bussiness(Limited, Pte, Ltd, LLC, AG Trust, Corporated, Partnership, sole Trader or other)',

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
                                    border:
                                    Border.all(width: 2, color: Colors.grey)),
                                
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










                              SizedBox(
                                height: 22,
                              ),

                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButtonCustom(
                                      text: 'Back to site',
                                      colorBG: ColorStyle.blueSKY,
                                      textStyle: TextStyles.textStyles_16
                                          .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                      onTap: () {

                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: ElevatedButtonCustom(
                                    text: 'Continue',
                                    colorBG: ColorStyle.blueSKY,
                                    textStyle: TextStyles.textStyles_16
                                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                    onTap: () {
                                      Get.to(PersonalApplication4());
                                    },
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),

                            ],

                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border:
                        Border.all(width: 2, color: ColorStyle.blueSKY)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
