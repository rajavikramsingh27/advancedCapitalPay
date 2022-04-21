import 'package:advanced_capital_pay/Views/PersonalApplication5.dart';
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

class PersonalApplication4 extends StatelessWidget {
  const PersonalApplication4({Key? key}) : super(key: key);

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
                                'Account Opening Intentions',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Complete the section below to inform our team about your Account Opening Intentions. ',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Which country will sending to',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: ['Nothing Selected',],
                                selectedValue: "Nothing Selected",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Which currencies will you plan on exchanging to',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: ['Nothing Selected',],
                                selectedValue: "Nothing Selected",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'What are the reasons for your exchanges',
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
                                  hintText: 'Please provide a detailed explanation At to what the reasons for your exchanges Will be.',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Frequency of Payments',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: ['Daily',],
                                selectedValue: "Daily",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Which countries do you personally hold Bank/FX accounts in',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: ['Nothing Selected',],
                                selectedValue: "Nothing Selected",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'What are the approximate amounts which will Be exchanged',
                                style: TextStyles.textStyles_14.apply(
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
                                       height: 59,
                                       width: 68,
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Text(
                                             'AFA',
                                             style: TextStyles.textStyles_20.apply(
                                               color: ColorStyle.secondryBlack,
                                               // fontWeightDelta: 1,
                                             ),
                                           ),
                                           Image.asset(
                                             ImageStyle.caretdown,
                                             height: 10,
                                           ),
                                         ],
                                       ),
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.only(
                                             topLeft: Radius.circular(4),
                                             bottomLeft: Radius.circular(4),
                                           ),
                                         border: Border.all(
                                           width: 1,
                                           color: Colors.grey
                                         )
                                       ),
                                    
                                     ),
                                 Expanded(child:  TextField(
                                   // obscureText: true,
                                   decoration: InputDecoration(
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.only(
                                         topRight: Radius.circular(4),
                                         bottomRight: Radius.circular(4),
                                       ),
                                     ),
                                     hintText: '100, 000, 00',

                                     labelStyle: TextStyles.textStyles_12.apply(
                                       color: Colors.grey,
                                       fontWeightDelta: 1,
                                     ),
                                   ),
                                 ),)
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'State the name(s) Of the Bank/Fx you pers',

                                  labelStyle: TextStyles.textStyles_12.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
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
                                      Get.to(PersonalApplication5());
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