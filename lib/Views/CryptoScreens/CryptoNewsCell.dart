
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Components/BackgroundImage.dart';
import '../../Controllers/Crypto/CryptoMarketController.dart';


import 'package:get/utils.dart';
import 'dart:ui';
import '../../../../Styles/ColorStyle.dart';
import '../../../../Styles/EffectStyle.dart';
import '../../../../Styles/ImageStyle.dart';
import '../../../../Styles/TextStyles.dart';


class CryptoNewsCell extends StatelessWidget {
  const CryptoNewsCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 64,
      decoration: BoxDecoration(
        color: ColorStyle.primaryWhite.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              ImageStyle.crypto123,
              height: 180,
              fit: BoxFit.fitHeight,
            ),
            borderRadius:
            EffectStyle.radiusCustom(8),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "Excessive Volatility Hindering Further Mainstream Adoption of Bitcoin, JPMorgan Says",
                  style:
                  TextStylesSFCompactDisplay
                      .textStyles_20
                      .apply(
                      color: ColorStyle
                          .primaryWhite,
                      fontWeightDelta:
                      1),
                ),
              ],
            ),
            padding: EdgeInsets.only(
                left: 14, right: 14),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Text(
              'Bitcoin’s biggest challenge is its volatility and the boom and bust cycles that hinder further institutional adoption, JPMorgan said in a research report.',
              style: TextStylesSFCompactDisplay
                  .textStyles_10
                  .apply(
                  color: ColorStyle
                      .whiteDuskyCrypto,
                  fontWeightDelta: 0),
            ),
            padding: EdgeInsets.only(
                left: 14, right: 14),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,
              children: [
                Text(
                  "cointelegraph.com",
                  style:
                  TextStylesSFCompactDisplay
                      .textStyles_11
                      .apply(
                    color: ColorStyle.blueSKY,
                  ),
                ),
                // SizedBox(width: 8,),
                Text(
                  "One day ago",
                  style:
                  TextStylesSFCompactDisplay
                      .textStyles_11
                      .apply(
                    color: ColorStyle
                        .whiteDuskyCrypto,
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(
                left: 14, right: 14),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
