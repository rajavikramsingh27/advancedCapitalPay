import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryFlag {
  static List<String> arrCountryFlag = [
    ImageStyle.English,
    ImageStyle.arabic,
    ImageStyle.espanol,

    ImageStyle.france,
    ImageStyle.netherland,
    ImageStyle.Deutsch,

    ImageStyle.italino,
    ImageStyle.china,
    ImageStyle.china,
  ];

  static List<String> arrCountryTitle = [
    'English',
    'Arabic',
    'Español',

    'François',
    'Netherlands',
    'Deutsch',

    'Italino',
    '汉语',
    '汉语',
  ];

  static iconFlag() {
    return IconButton(
      icon: Image.asset(
        ImageStyle.flagCountry,
        height: 30,
      ),
      onPressed: () {
        showPopupMenu();
      },
    );
  }

  static showPopupMenu() {
    Get.dialog(
      Material(
        color: Colors.transparent,
        child: InkWell(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: SizedBox(),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 16,
              ),
              child: Image.asset(
                ImageStyle.bgPolygon4,
                width: 30,
              ),
            ),
            Container(
              width: 260,
              height: 270,
              margin: EdgeInsets.only(
                left: 16,
              ),
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(2)),
              child: GridView.builder(
                padding: EdgeInsets.only(top: 16, bottom: 0),
                itemCount: arrCountryFlag.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 10,
                  // mainAxisExtent: 10
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Column(
                      children: [
                        Image.asset(
                          arrCountryFlag[index],
                          height: 36,
                        ),
                        SizedBox(height: 10),
                        Text(
                          arrCountryTitle[index],
                          style: TextStylesPoppins.textStyles_12.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {

                    },
                  );
                },
              ),
            ),
          ]),
          onTap: () {
            Get.back();
          },
        ),
      ),
      barrierDismissible: true,
    );
  }
}
