import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

class TitleStar {
  static titleStar(String title, bool isStar, [double fontSize = 14, FontWeight fontWeight = FontWeight.normal]) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: TextStylesPoppins.kFontFamily,
              fontWeight: fontWeight
            )
          ),
          if (isStar)
            TextSpan(
              text: '*',
              style: TextStylesPoppins.textStyles_14.apply(
                color: Colors.red,
                fontWeightDelta: 1,
              ),
            ),
        ],
      ),
    );
  }
}



/*

padding: EffectStyle.padding(10, 10, 10, 10),
                                colorBorder: Colors.black12,
                                radiusBorder: 2,
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),

 */

/*

colorBG: ColorStyle.primaryWhite,
                                colorBorder: Colors.black12,
                                icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),

 */

/*
TextFieldCustomOutline(
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                hintText: 'Middle Name (Optional)',
                                textStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: Colors.black,
                                  fontWeightDelta: 1,
                                ),
                                colorFill: ColorStyle.primaryWhite,
                                colorBoder: Colors.black12,
                                radiusBorder: 2,
                              ),
 */

/*
TitleStar.titleStar(
                                  'Passport Number',
                                  true
                              ),
 */
