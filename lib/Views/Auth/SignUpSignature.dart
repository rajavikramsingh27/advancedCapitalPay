import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/TitleStar.dart';

class SignUpSignature {
  static signUpSignature() {
    return Get.dialog(Material(
        color: Colors.transparent,
        child: Container(
          padding: EffectStyle.padding(20, 20, 20, 20),
          decoration: BoxDecoration(borderRadius: EffectStyle.radiusCustom(14)),
          child: Scaffold(
              appBar: AppBarStyleTitle(
                title: 'Signature',
                colorTitle: ColorStyle.secondryBlack,
              ),
              body: SingleChildScrollView(
                padding: EffectStyle.padding(20, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.4,
                            color: Colors.black12,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                              border: Border.all(
                                color: Colors.black12,
                                width: 1
                              )
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
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
                            height: 16,
                          ),
                          TitleStar.titleStar('Signature date', true, 14, FontWeight.w500),
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
