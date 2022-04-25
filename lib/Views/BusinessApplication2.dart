import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class BusinessApplication2 extends StatelessWidget {
  const BusinessApplication2({Key? key}) : super(key: key);

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
                                'Verify Directors, Shareholders And Authorized Account Signatures',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                              'Check and Verify the information of individuals below. '
                                  ' If the information is incorrect you '
                                  ' may edit, remove or add individuals. ',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.cancel_outlined,
                                    size: 28,
                                    color: ColorStyle.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Company director',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.cancel_outlined,
                                    size: 28,
                                    color: ColorStyle.grey,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Shareholder (10% or more)',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
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
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Authorized Signature',
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
                              Container(
                                height: 1,
                                color: ColorStyle.grey,
                              ),
                              Container (
                                alignment: Alignment.topCenter,
                                padding: EffectStyle.padding(20, 20, 14, 0),
                                child: Column(

                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline_sharp,
                                          size: 28,
                                          color: ColorStyle.blueSKY,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Add an additional',
                                          style: TextStyles.textStyles_16.apply(
                                            color: ColorStyle.blueSKY,
                                          ),
                                        ),


                                      ],
                                    ),
                                    Column(
                                      children: [

                                        Text('Director, Shareholder',
                                          style: TextStyles.textStyles_16.apply(
                                            color: ColorStyle.blueSKY,
                                          ),
                                        ),
                                        Text('Authorized Signature to',
                                          style: TextStyles.textStyles_16.apply(
                                            color: ColorStyle.blueSKY,
                                          ),
                                        ),
                                        Text('the Account',
                                          style: TextStyles.textStyles_16.apply(
                                            color: ColorStyle.blueSKY,
                                          ),
                                        ),
                                      ],
                                    )


                                  ],
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),






                              SizedBox(
                                height: 40,
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
                                      // Get.to(PersonalApplication3());
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
