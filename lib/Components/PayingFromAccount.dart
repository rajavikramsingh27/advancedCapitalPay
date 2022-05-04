import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class PayingFromAccount extends StatelessWidget {
  const PayingFromAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-40,
      padding: EffectStyle.padding(16, 16, 16, 16),
      decoration: BoxDecoration(
        color: ColorStyle.primaryWhite,
        borderRadius: EffectStyle.radiusCustom(10),
        image: DecorationImage(
          image: AssetImage(ImageStyle.bg_back),
          fit: BoxFit.fitWidth
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'From',
            style: TextStylesPoppins.textStyles_12.apply(
                fontWeightDelta: 2,
                color: ColorStyle.ligthBlue),
          ),
          Text(
            'Harrison Smith Plus+ A/C   **0624USD',
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 2,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Available Balance',
            style: TextStylesPoppins.textStyles_12.apply(
                fontWeightDelta: 2,
                color: ColorStyle.ligthBlue),
          ),
          Text(
            '\$ 147,582.58',
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '00117280625',
                    style: TextStylesPoppins.textStyles_12.apply(
                      color: ColorStyle
                          .secondryBlack,
                      fontWeightDelta: 2,
                    ),
                  ),
                  Text(
                    'Account Details',
                    style: TextStylesPoppins.textStyles_10.apply(
                      color: ColorStyle
                          .ligthBlue,
                      fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'GB5909023459023485793',
                    style: TextStylesPoppins.textStyles_12.apply(
                      color: ColorStyle
                          .secondryBlack,
                      fontWeightDelta: 2,
                    ),
                  ),
                  Text(
                    'IBAN Number',
                    style: TextStylesPoppins.textStyles_10.apply(
                      color: ColorStyle
                          .ligthBlue,
                      fontWeightDelta: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '51-0012',
                        style: TextStylesPoppins.textStyles_12.apply(
                          color: ColorStyle
                              .secondryBlack,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        'Sort Code',
                        style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle
                              .ligthBlue,
                          fontWeightDelta: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'RBOSGB2L',
                        style: TextStylesPoppins.textStyles_12.apply(
                          color: ColorStyle
                              .secondryBlack,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        'SWIFT Code',
                        style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle
                              .ligthBlue,
                          fontWeightDelta: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
