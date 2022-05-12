
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SummaryTransferTop extends StatelessWidget {
  const SummaryTransferTop({Key? key}) : super(key: key);

  descPriceCountry(String desc, String price, String countryCode, String imageCountry) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  desc,
                  style: TextStylesPoppins.textStyles_8.apply(
                      color: ColorStyle.grey,
                      fontWeightDelta: 1),
                ),
                SizedBox(height: 10),
                Text(
                  price,
                  style: TextStylesPoppins.textStyles_18.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 8, left: 8),
              // width: 101,
              height: 50,
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    countryCode,
                    style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2),
                  ),
                  SizedBox(width: 14),
                  Image.asset(
                    imageCountry,
                    height: 20,
                  )
                ],
              ),
              decoration: BoxDecoration(
                // color: ColorStyle.primaryWhite,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(ImageStyle.Rectangle1958),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 1,
          color: ColorStyle.grey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'USD 1.00 = 3.6725 AED ',
          style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1),
        ),
        SizedBox(height: 10),
        Container(
          height: 1,
          color: ColorStyle.grey,
        ),
        SizedBox(height: 20),

        descPriceCountry(
            'You send United States Dollar',
            '128000',
            'USD',
            ImageStyle.tirnga1
        ),

        SizedBox(height: 20),

        descPriceCountry(
            'You receive United Arab Emirates Dirham',
            '470,000',
            'AED',
            ImageStyle.tirnga2
        ),
      ],
    );
  }
}
