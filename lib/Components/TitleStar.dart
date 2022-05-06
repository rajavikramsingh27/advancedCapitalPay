import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class TitleStar {
  static titleStar(String title, bool isStar) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
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
