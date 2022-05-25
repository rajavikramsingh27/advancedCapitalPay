import 'dart:ui';

import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Controllers/SavingGoal2Controller.dart';
import 'package:advanced_capital_pay/Controllers/SavingGoalController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';

class SavingGoal2 extends StatelessWidget {
  const SavingGoal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SavingGoal2Controller());
    return GetBuilder(
      init: SavingGoal2Controller(),
      initState: (state) {

      },
      builder: (auth) {
        return Scaffold(
            backgroundColor: ColorStyle.primaryWhite,
            body:  SingleChildScrollView(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        left: 0,
                        // right: 0,
                        top: 0,
                        child: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          // height: 240.0,
                          child: Image.asset(ImageStyle.card_3, fit: BoxFit.fill,),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20,right: 20,),
                        height: 235,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: Container(
                                    padding: EffectStyle.padding(4, 4, 4, 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: ColorStyle.primaryWhite,
                                            width: 1
                                        )
                                    ),
                                    child: Icon(Icons.arrow_back,color: ColorStyle.primaryWhite,size: 20,),
                                  ),
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Maldives',
                                      style: TextStylesPoppins.textStyles_24.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1
                                      ),
                                    ),
                                    Text(
                                      '68 days left',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1
                                      ),
                                    ),
                                    Text(
                                      '\$ 8,187.89',
                                      style: TextStylesPoppins.textStyles_24.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30,)
                              ],
                            ),
                            Container(height: 40,),
                            ComponentsSignUpCustom.topProgress(5),
                            Container(height: 20,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EffectStyle.padding(16, 16, 16, 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorStyle.blueSKY,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorStyle.grey.withOpacity(0.6),
                                    // spreadRadius: 6,
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                ImageStyle.wallet4,
                                height: 36,
                                width: 36,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Add Funds',
                              style: TextStylesPoppins.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EffectStyle.padding(16, 16, 16, 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorStyle.primaryWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorStyle.grey.withOpacity(0.6),
                                    // spreadRadius: 6,
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                ImageStyle.withdraw2,
                                height: 36,
                                width: 36,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Withdraw',
                              style: TextStylesPoppins.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EffectStyle.padding(16, 16, 16, 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorStyle.primaryWhite,
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorStyle.grey.withOpacity(0.5),
                                    // spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                ImageStyle.menudotsvertical,
                                height: 36,
                                width: 36,
                                color: ColorStyle.blueSKY,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'More',
                              style: TextStylesPoppins.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 1,
                    color: ColorStyle.grey,
                  ),
                  SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.only(left: 20,),

                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Saving rules',
                            style: TextStylesPoppins.textStyles_16.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 2
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(

                            children: [
                              Container(
                                child: Image.asset(
                                  ImageStyle.coin2,
                                  // height: 10,
                                ),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),

                                ),
                              ),
                              SizedBox(width: 12,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Spare change',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  Text(
                                    'Round-Up ',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(

                            children: [
                              Container(

                                child: Image.asset(
                                  ImageStyle.payment4,
                                  // height: 10,
                                ),
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),

                                ),
                              ),
                              SizedBox(width: 12,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Recurring payment',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  Text(
                                    '10.00 / 9th day of the month',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 1,
                    color: ColorStyle.grey,
                  ),
                  SizedBox(height: 16,),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child:  Text(
                      'Activity',
                      style: TextStylesPoppins.textStyles_16.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 2
                      ),
                    ),
                  ),
                  ListView.builder(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                      shrinkWrap: true,
                      itemCount: controller.images.length,
                      // itemCount: 1,
                      // scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          margin: EdgeInsets.only(bottom: 8),
                          // width: 329,
                          height: 80,
                          child: Row(

                            children: [
                              Image.asset(
                                controller.images[index],
                                height: 38,
                              ),
                              SizedBox(width: 18,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Text(
                                    'KFC',
                                    // controller.chooseActivitySelected[index],
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(
                                    'Spare change',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(width: 100,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20,),
                                  Text(
                                    '     + S 1.90',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.green,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(
                                    '          22:31',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),


                                ],
                              )


                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.circular(10),
                          ),
                        );



                      }),
                ],
              ),
            )


        );
      },
    );


  }
}
