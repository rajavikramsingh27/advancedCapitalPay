import 'package:advanced_capital_pay/Views/PersonalApplication3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class PersonalApplication2 extends StatelessWidget {
  const PersonalApplication2({Key? key}) : super(key: key);

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
                                'What is your Residential ,Correspondence Address',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Please complete the sections below '
                                    'for the client profile Information, '
                                    'we can only accept answers provided '
                                    'in English. If you required any '
                                    'assistance throughout the application '
                                    'process simply click the Live Help Button '
                                    'where one of our Customer Support Representatives '
                                    'will be happy to assist you with any queries',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text(
                                'Residential Address',
                                style: TextStyles.textStyles_24.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),


                              Text(
                                'Country',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                iconWidget: Image.asset(
                                  ImageStyle.dropDown,
                                  height: 16,
                                ),
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Country',
                                  'India',
                                  'Amarica',
                                  'Dubey'
                                ],
                                selectedValue: "Country",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Address Line 1',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Address Line 2',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'City',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Country / State / Provine (Optional)',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Post Zip Code',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black12
                                      )
                                    ),

                                  ),
                                 SizedBox(width: 10,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(height: 20,),
                                     Text(
                                       'My Correspondence Address is name',
                                       style: TextStyles.textStyles_14.apply(
                                         color: ColorStyle.secondryBlack,
                                         fontWeightDelta: 1,
                                       ),
                                     ),
                                     Text(
                                       'as my residetinal address',
                                       style: TextStyles.textStyles_14.apply(
                                         color: ColorStyle.secondryBlack,
                                         fontWeightDelta: 1,
                                       ),
                                     ),
                                   ],
                                 )
                                ],
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                                'Correspondence Address',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),

                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Address Line 1',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Address Line 2',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'City',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Country / State / Provine (Optional)',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Post Zip Code',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Country',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              DropdownButtonCustom(
                                iconWidget: Image.asset(
                                  ImageStyle.dropDown,
                                  height: 16,
                                ),
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Country',
                                  'India',
                                  'Amarica',
                                  'Dubey'
                                ],
                                selectedValue: "Country",
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
                                      Get.to(PersonalApplication3());
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
                        Border.all(width: 1, color: ColorStyle.blueSKY)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
