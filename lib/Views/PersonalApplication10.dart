import 'package:advanced_capital_pay/Views/PersonalApplication11.dart';
import 'package:advanced_capital_pay/Views/PersonalApplication2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'PersonalApplication7.dart';

class PersonalApplication10 extends StatelessWidget {
  const PersonalApplication10({Key? key}) : super(key: key);

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
                             'Account login information',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                             'Please enter the register e-mail and password '
                                     ' which will be used to login to your AdvanceCapitalPay Account.'
    ' You will need to keep your security questions securely '
                                 ' safe as this will be used to Help if you forget your password.',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text(
                                'Registered Login',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Login E-Mail Address',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirm Login E-Mail Address',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirm Password',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                'Password Strength',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 2,
                                      color: ColorStyle.grey,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Container(


                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.secondryBlack,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Use 6 to 64 characters.',
                                    style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(


                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.secondryBlack,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     SizedBox(height: 20),
                                     Text(
                                       'Besides letters, include at least a',

                                       style: TextStyles.textStyles_14.apply(
                                         color: ColorStyle.secondryBlack,
                                       ),
                                     ),

                                     Text(
                                       ' number or  symbol (!@#^&*-+)',

                                       style: TextStyles.textStyles_14.apply(
                                         color: ColorStyle.secondryBlack,
                                       ),
                                     ),
                                   ],
                                 ),

                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Container(


                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.secondryBlack,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Password is case sensitive.',
                                    style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(


                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.secondryBlack,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20),
                                      Text(
                                        'Avoid using the same password',

                                        style: TextStyles.textStyles_14.apply(
                                          color: ColorStyle.secondryBlack,
                                        ),
                                      ),

                                      Text(
                                        ' for multiple',

                                        style: TextStyles.textStyles_14.apply(
                                          color: ColorStyle.secondryBlack,
                                        ),
                                      ),
                                    ],
                                  ),

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
