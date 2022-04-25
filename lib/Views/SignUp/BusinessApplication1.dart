import '../SignUp/BusinessApplication2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Components/DropdownButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/ComponentsSignUp.dart';
import '../SignUp/EffectStyleSignUp.dart';

class BusinessApplication1 extends StatelessWidget {
  const BusinessApplication1({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress(0),
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
                                  style: TextStyles.textStyles_20.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Enter the data requires in sections below to complete your Business Profile.',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Legal Company name',
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
                                    labelText:
                                        'The name provided must exactly match t',
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
                                  'Which currencies will you plan on exchanging to',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                DropdownButtonCustom(
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
                                  'Year of Incorporation',
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
                                    labelText:
                                        'Please enter year of incorporation',
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
                                  'Legal Status',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                DropdownButtonCustom(
                                  colorBorder: Colors.grey,
                                  onChanged: (text) {},
                                  listValue: [
                                    'Limited',
                                  ],
                                  selectedValue: "Limited",
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Company Registration Number',
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
                                    labelText:
                                        'Please enter your company registration n',
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
                                  'Nature of Business',
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
                                    labelText:
                                        'Provide a detailed explanation of the Nature of your business',
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
                                  'Business Telephone Number',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                DropdownButtonCustom(
                                  colorBorder: Colors.grey,
                                  onChanged: (text) {},
                                  listValue: [
                                    '+355 Albania',
                                  ],
                                  selectedValue: "+355 Albania",
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Additionam Telephone Number ( if Applcable)',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonCustom(
                                  colorBorder: Colors.grey,
                                  onChanged: (text) {},
                                  listValue: [
                                    '+355 Albania',
                                  ],
                                  selectedValue: "+355 Albania",
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        // obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'please enter your personal email',
                                          labelStyle:
                                              TextStyles.textStyles_14.apply(
                                            color: Colors.grey,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        // obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'please enter your personal email',
                                          labelStyle:
                                              TextStyles.textStyles_14.apply(
                                            color: Colors.grey,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                  height: 12,
                                ),
                                Text(
                                  'Regulatory body (Non-Compulstory)',
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
                                    labelText:
                                        'if application, provide details of your compa',
                                    labelStyle: TextStyles.textStyles_14.apply(
                                      color: Colors.grey,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Registration Number with Regulatory (Non-Compulstory)',
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
                                    labelText:
                                        'if application, provide details of your compa',
                                    labelStyle: TextStyles.textStyles_14.apply(
                                      color: Colors.grey,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Business E-Mail Address',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        // obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'please enter your phone E-mail address',
                                          labelStyle:
                                              TextStyles.textStyles_14.apply(
                                            color: Colors.grey,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add,
                                        // size: 18,
                                        color: ColorStyle.darkestBlueSignUp),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'Add an additional Bussiness Email Address',
                                      style: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Business E-Mail Address',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        // obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'please enter your phone E-mail address',
                                          labelStyle:
                                              TextStyles.textStyles_14.apply(
                                            color: Colors.grey,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add,
                                        // size: 18,
                                        color: ColorStyle.darkestBlueSignUp),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'Add an additional Fax Number',
                                      style: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Text(
                                  'Website Address Starting with http://',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        // obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'Enter business website in the format of htt',
                                          labelStyle:
                                              TextStyles.textStyles_14.apply(
                                            color: Colors.grey,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                  Get.to(BusinessApplication2());
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
