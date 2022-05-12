import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPersonalEditSignature {
  static personalApplication6() {
    return Get.dialog(Material(
        color: Colors.transparent,
        child: Container(
          padding: EffectStyle.padding(20, 20, 20, 20),
          decoration: BoxDecoration(borderRadius: EffectStyle.radiusCustom(14)),
          child: Scaffold(
              appBar: AppBarStyleTitle(
                title: 'Edit Signature Mr. Test Test',
                colorTitle: ColorStyle.secondryBlack,
              ),
              body: SingleChildScrollView(
                padding: EffectStyle.padding(20, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: ColorStyle.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Company director or Shareholder',
                      style: TextStylesPoppins.textStyles_16.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 1,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Company director',
                          style: TextStylesPoppins.textStyles_12.apply(
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
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Shareholder (10% or more)',
                          style: TextStylesPoppins.textStyles_12.apply(
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
                            color: ColorStyle.darkestBlueSignUp,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Authorized Signature',
                          style: TextStylesPoppins.textStyles_12.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TitleStar.titleStar('Your Name', true),
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
                      iconWidget: Icon(
                        Icons.arrow_drop_down,
                        color: ColorStyle.grey,
                        size: 26,
                      ),
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
                    TitleStar.titleStar('Country of Birth', true),
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
                      iconWidget: Icon(
                        Icons.arrow_drop_down,
                        color: ColorStyle.grey,
                        size: 26,
                      ),
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
                      iconWidget: Icon(
                        Icons.arrow_drop_down,
                        color: ColorStyle.grey,
                        size: 26,
                      ),
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
                      iconWidget: Icon(
                        Icons.arrow_drop_down,
                        color: ColorStyle.grey,
                        size: 26,
                      ),
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
                      height: 28,
                    ),
                    TitleStar.titleStar('Nationality', true),
                    SizedBox(
                      height: 6,
                    ),
                    CountryPicker(
                      colorBG: ColorStyle.primaryWhite,
                      colorBorder: Colors.black12,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: ColorStyle.grey,
                        size: 26,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TitleStar.titleStar('Email Address', true),
                    SizedBox(
                      height: 6,
                    ),
                    TextFieldCustomOutline(
                      padding: EffectStyle.padding(10, 10, 10, 10),
                      hintText: '1234@test.com',
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
                    TitleStar.titleStar('Company Role', true),
                    SizedBox(
                      height: 6,
                    ),
                    TextFieldCustomOutline(
                      maxLines: 6,
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
                    if (!isPrivate.value)
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        TitleStar.titleStar('eSignature Confirmation', true),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 26,
                              color: ColorStyle.darkestBlueSignUp,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: Text(
                                'I will receive the authorised signature section by email and have the signatory sign it later',
                                style: TextStylesPoppins.textStyles_12.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TitleStar.titleStar('Signature date', true),
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
                          iconWidget: Icon(
                            Icons.arrow_drop_down,
                            color: ColorStyle.grey,
                            size: 26,
                          ),
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
                          iconWidget: Icon(
                            Icons.arrow_drop_down,
                            color: ColorStyle.grey,
                            size: 26,
                          ),
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
                          iconWidget: Icon(
                            Icons.arrow_drop_down,
                            color: ColorStyle.grey,
                            size: 26,
                          ),
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
                      ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButtonCustom(
                          width: 140,
                          text: 'Clear',
                          colorBG: ColorStyle.hex('#353A40'),
                          radiusBorder: 0,
                          colorBorder: ColorStyle.secondryBlack,
                          textStyle: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        Container(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 10,
                        ),
                        ElevatedButtonCustom(
                          width: 140,
                          text: 'Save',
                          colorBG: ColorStyle.darkestBlueSignUp,
                          radiusBorder: 0,
                          colorBorder: ColorStyle.secondryBlack,
                          textStyle: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              )),
        )));
  }
}
