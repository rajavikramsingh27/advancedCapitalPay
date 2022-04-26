import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import '../SignUp/PersonalApplication2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Components/DropdownButtonCustom.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../SignUp/ComponentsSignUp.dart';
import '../../Components/CountryPicker.dart';


class PersonalApplication1 extends StatelessWidget {
  const PersonalApplication1({Key? key}) : super(key: key);

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
                          decoration: BoxDecoration(color: ColorStyle.darkestBlueSignUp),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ComponentsSignUp.title('Welcome to Advance Capital'
                                  'On-boarding Application Form',),
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
                                'Your Name',
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
                                iconWidget: Image.asset(
                                  ImageStyle.dropDown,
                                  height: 16,
                                ),
                                listValue: ['Mr.', 'Miss', 'Mrs'],
                                selectedValue: "Mr.",
                                onChanged: (text) {},
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
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
                                  labelText: 'Middle Name',
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
                                  labelText: 'Last Name',
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
                                'Country of Birth',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),

                              CountryPicker(),

                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Place of Birth',
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
                                onChanged: (text) {

                                },
                                listValue: [
                                  'Place of Birth',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "Place of Birth",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'CitizenShip',
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
                                listValue: [
                                  'CitizenShip',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "CitizenShip",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Date Of Birth',
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
                                listValue: [
                                  'Date',
                                  '01',
                                  '02',
                                  '03',
                                  '04',
                                  '05',
                                  '06',
                                  '07',
                                  '08',
                                  '09',
                                  '10',
                                  '11',
                                  '12',
                                  '13',
                                  '14',
                                  '15',
                                  '16',
                                  '17',
                                  '18',
                                  '19',
                                  '20',
                                  '21',
                                  '22',
                                  '23',
                                  '24',
                                  '25',
                                  '26',
                                  '27',
                                  '28',
                                  '29',
                                  '30',
                                  '31',
                                ],
                                selectedValue: "Date",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Month',
                                  'January',
                                  'Fabruary',
                                  'March',
                                  'April',
                                  'May',
                                  'June',
                                  'July',
                                  'August',
                                  'September',
                                  'October',
                                  'November',
                                  'December',
                                ],
                                selectedValue: "Month",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Year',
                                  '1991',
                                  '1992',
                                  '1993',
                                  '1994',
                                  '1995',
                                  '1996',
                                  '1997',
                                  '1998',
                                  '1999',
                                  '2000',
                                  '2001',
                                  '2002',
                                  '2003',
                                  '2004',
                                  '2005',
                                  '2006',
                                  '2007',
                                  '2008',
                                  '2009',
                                  '2010',
                                  '2011',
                                  '2012',
                                  '2013',
                                  '2014',
                                  '2015',
                                  '2016',
                                  '2017',
                                  '2018',
                                  '2019',
                                  '2020',
                                  '2021',
                                  '2022',
                                  '2023'
                                ],
                                selectedValue: "Year",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Current Occupation',
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
                                listValue: [
                                  'Current Occupation',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "Current Occupation",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Passport Number',
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
                                listValue: [
                                  'Please enter passport number',
                                  '202',
                                  '203',
                                  '204',
                                ],
                                selectedValue: "Please enter passport number",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Telephone nomber',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),

                              TelePhoneNumberCode(),

                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      // obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText:
                                            'please enter your phone number without country code',
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
                                        borderRadius: BorderRadius.circular(20),
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
                                    'Add an additional telephone number',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.darkestBlueSignUp,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Private E-mail address',
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
                                        borderRadius: BorderRadius.circular(20),
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
                                    'Add an additional E-mail address',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.darkestBlueSignUp,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'How did you hear about us ?',
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
                                listValue: [
                                  'Referral',
                                ],
                                selectedValue: "Referral",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                          color: Colors.black12)),
                                  labelText: 'Please specify your anwer',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              ComponentsSignUp.backContinue('Back to site', () {

                              }, 'Continue', () {
                                Get.to(PersonalApplication2());
                              })
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: EffectStyleSignUp.decoration()
                  ),
                  ComponentsSignUp.bottomUI(),
                ],
              ),
            )),
      ],
    );
  }
}
