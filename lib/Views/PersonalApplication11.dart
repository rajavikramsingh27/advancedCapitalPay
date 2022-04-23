import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class PersonalApplication11 extends StatelessWidget {
  const PersonalApplication11({Key? key}) : super(key: key);

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
                                'AdvanceCapitalPay Client Declaration Form',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                             'In submitting this Advance Capital '
                                   ' Pay ApplicationForm, I/We fully understand '
                     ' and agree for and on behalf that.',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
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
                                      color: ColorStyle.blueSKY,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [


                                      Text(
                                        ' We have the full authority to submit this',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(

                                            ' application and to on-board as a client with ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' AdvanceCapitalPay and enter into the   ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' associated terms and conditions. ',
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
                          height: 12,
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
                                      color: ColorStyle.blueSKY,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        ' We have provide all information and ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(

                                        ' documentation in this application to the  ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' best of my/our knowledge and confirm ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' that it is true and  complete ',
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
                                height: 12,
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
                                      color: ColorStyle.blueSKY,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        ' We have read, understood and fully ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(

                                        ' agreed to be bound at all times by  ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' applicable Terms and  Conditions, Privacy  ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                      ' Policy, Acceptable Use Policy Electronic ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
          Text(
            'Disclosures and consents as published  ',
            style: TextStyles.textStyles_12.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
          ),
          Text(
            ' within my AdvanceCapitalPay Account ',

            style: TextStyles.textStyles_12.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
          ),
          Text(
            'and on the  AdvanceCapitalPay Website',
            style: TextStyles.textStyles_12.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
          ),
                                      Text(
                                        ' https://www.advancecapitalpay.com  ',
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
                                height: 12,
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
                                      color: ColorStyle.blueSKY,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        ' We have provide all information and ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(

                                        ' documentation in this application to the  ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' best of my/our knowledge and confirm ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' that it is true and  complete ',
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
                                height: 18,
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
                                      Get.to(PersonalApplication11());
                                    },
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: 12,
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
