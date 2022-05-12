
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Components/PickerCustom.dart';
import 'package:advanced_capital_pay/Components/RadioButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SelectFiles.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalAuthorizedSignatures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpOwnerVerification extends StatelessWidget {
  const SignUpOwnerVerification({Key? key}) : super(key: key);

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
            backgroundColor: Colors.transparent,
            appBar: AppBarStyleStatusBar(),
            body: SingleChildScrollView(
              padding: EffectStyle.padding(20, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  ComponentsSignUp.topProgress('48'),
                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: ColorStyle.grey,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorStyle.darkestBlueSignUp,
                        width: 1
                      ),
                      borderRadius: EffectStyle.radiusCustom(2)
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Container(
                            alignment: Alignment.center,
                            width: 102,
                            height: 43,
                            decoration: EffectStyleSignUp.decoration(
                                ColorStyle.darkestBlueSignUp
                            ),
                            child: Text(
                              'ACFVC8JTJ',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ultimate Beneficail Owners Profile Verifications',
                                style: TextStylesPoppins.textStyles_22
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Person(s) required to complete the following below:',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '1. Any Individual who has significant control over management'
                                    '\n2. Any members or shareholders that indirectly or directly control or own 25% or more of the voting rights or shares of the company'
                                    '\n3. Politically Exposed Persons (PEP\'s - Where PEP Owner(s) hold a share of more than 5%',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'UBO Required Documentation Attachments (No Older than 3 Months)',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                ' - Passport Copy'
                                    ' \n - Proof of Registered Address',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 1,
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                height: 1,
                                color: Colors.black12,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Your Name',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  // fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                onChanged: (text) {},
                                listValue: ['Mr.', 'Miss', 'Mrs'],
                                selectedValue: "Mr.",
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'First Name',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  // fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Middle Name (Optional)',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  // fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Last Name',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  // fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),



                              SizedBox(
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Country of Birth',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              CountryPickerCountryCode(
                                colorBG: ColorStyle.primaryWhite,
                                colorBorder: Colors.black12,
                                icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                              ),
                              SizedBox(
                                height: 16,
                              ),



                              TitleStar.titleStar(
                                  'Day',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Month',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Year',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Ownership percentage',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: '% Enter your ownership percentage',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),

                              SizedBox(
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Voting rights',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Enter your voting rights',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),

                              SizedBox(
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Postion/Relationship to the Company',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Enter your postion / relationship to the company',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Date when Beneficail Interest was acquired',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 16,
                              ),

                              TitleStar.titleStar(
                                  'Day',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Month',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                                height: 16,
                              ),
                              TitleStar.titleStar(
                                  'Year',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
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
                              SizedBox(height: 16,),
                              TitleStar.titleStar(
                                  'Passport number',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(height: 6,),
                              TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Enter your passport number',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),
                              SizedBox(height: 16,),
                              TitleStar.titleStar(
                                  'PEP - Politically Exposed Persons',
                                  true,
                                  14, FontWeight.w500
                              ),
                              SizedBox(height: 6,),
                              RadioButtonCustom(
                                colorActive: ColorStyle.darkestBlueSignUp,
                                colorInActive: ColorStyle.secondryBlack,
                                firstText: 'Yes',
                                secondText: 'No',
                                sizeIcon: 24,
                              ),
                              SizedBox(height: 16,),
                              Container(
                                width: double.infinity,
                                padding: EffectStyle.padding(16, 16, 16, 16),
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: EffectStyle.radiusCustom(2)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleStar.titleStar(
                                      'Upload UBO Documentation',
                                      true,
                                      18,
                                    ),
                                    SizedBox(height: 16,),
                                    TitleStar.titleStar(
                                        'Select document type',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(height: 6,),
                                    RadioButtonCustom(
                                      colorActive: ColorStyle.darkestBlueSignUp,
                                      colorInActive: ColorStyle.secondryBlack,
                                      firstText: 'Passport',
                                      secondText: 'Id Card',
                                      sizeIcon: 24,
                                    ),
                                    SizedBox(height: 16,),
                                    TitleStar.titleStar(
                                        'Country of Issue',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CountryPickerCountryCode(
                                      padding: EffectStyle.padding(16, 16, 0, 0),
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                    ),

                                    SizedBox(
                                      height: 16,
                                    ),
                                    SelectFiles(
                                        colorBG: ColorStyle.primaryWhite,
                                        colorBorder: ColorStyle.darkestBlueSignUp
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Upload Documents',
                                      style: TextStylesPoppins.textStyles_16.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 0.4,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Registered address',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),

                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'City',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),

                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Post/Zip Code',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),

                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Country',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CountryPickerCountryCode(
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                    )

                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),

                              Container(
                                decoration: EffectStyleSignUp.decoration(ColorStyle.primaryWhite, 4),
                                alignment: Alignment.center,
                                padding: EffectStyle.padding(0, 0, 10, 10),
                                child: InkWell(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.darkestBlueSignUp,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: ColorStyle.darkestBlueSignUp,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ultimate Beneficial',
                                            maxLines: 2,
                                            style: TextStylesPoppins.textStyles_20.apply(
                                              color: ColorStyle.darkestBlueSignUp,
                                            ),
                                          ),
                                          Text(
                                            'Owners',
                                            maxLines: 2,
                                            style: TextStylesPoppins.textStyles_20.apply(
                                              color: ColorStyle.darkestBlueSignUp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    PickerCustom.imagePicker((file) {

                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 20),
                              ButtonContinueCancel(
                                  radiusBorder: 2,
                                  height: 44,
                                  textFirst: 'Back',
                                  colorBGFirst: ColorStyle.hex('#016ECF'),
                                  colorBorderFirst: ColorStyle.hex('#016ECF'),
                                  textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                                    // fontWeightDelta: 1,
                                      color: ColorStyle.primaryWhite
                                  ),
                                  onTapFirst: () {},
                                  textSecond: 'Continue',
                                  colorBGSecond: ColorStyle.grey,
                                  colorBorderSecond: Colors.transparent,
                                  textStyleSecond: TextStylesPoppins.textStyles_14.apply(
                                    // fontWeightDelta: 1,
                                      color: ColorStyle.primaryWhite),
                                  onTapSecond: () {
                                    Get.to(SignUpPersonalAuthorizedSignatures(
                                      confirmMeDetails: 'I have responsibility to act on behalf of company and provide'
                                      'instructions for payments and any docuementation required to AdvanceCapitalPay Client',
                                    ));
                                  }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  ComponentsSignUp.bottomUI(),
                  SizedBox(height: 20,)
                ],
              ),
            ))
      ],
    );
  }
}
