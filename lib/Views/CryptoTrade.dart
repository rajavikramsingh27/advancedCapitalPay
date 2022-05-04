import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoTrade extends StatelessWidget {
  const CryptoTrade({Key? key}) : super(key: key);

  titleIconCoversion(String title, String icon, String currency, String price1,
      String price2, int colorType) {
    return Column(
      children: [
        Container(
          padding: EffectStyle.padding(16, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.end,
            style: TextStylesSFCompactDisplay.textStyles_12.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 0,
            ),
          ),
        ),
        Container(
          padding: EffectStyle.padding(0, 16, 0, 0),
          alignment: Alignment.centerRight,
          child: Text(
            price1,
            textAlign: TextAlign.end,
            style: TextStylesSFCompactDisplay.textStyles_12.apply(
              color: ColorStyle.primaryWhite.withOpacity(0.7),
              fontWeightDelta: 0,
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    icon,
                    height: 30,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    currency,
                    style: TextStylesSFCompactDisplay.textStyles_26.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: ColorStyle.primaryWhite.withOpacity(0.7),
                    size: 30,
                  ),
                ],
              ),
              Text(
                price2,
                style: TextStylesSFCompactDisplay.textStyles_26.apply(
                  color: (colorType == 1)
                      ? ColorStyle.hex('#F7931A')
                      : ColorStyle.hex('#627EEA'),
                  fontWeightDelta: 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageStyle.bgCryptoTrade),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 370,
                  width: MediaQuery.of(context).size.width,
                  padding: EffectStyle.padding(10, 10, 0, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: EffectStyle.radiusCustom(10),
                          child: Image.asset(
                            ImageStyle.bgCrptoTrade2,
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorStyle.darkestBlue.withOpacity(0.8),
                              borderRadius: EffectStyle.radiusCustom(10)
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBarStyleTitle(
                            title: 'EXCHANGE PORTAL',
                            styleTitle: TextStylesSFCompactDisplay.textStyles_16
                                .apply(fontWeightDelta: 1),
                            leadingButton: IconButton(
                              icon: Image.asset(
                                ImageStyle.back_circle,
                                height: 28,
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            trailingButton: [
                              IconButton(
                                icon: Icon(
                                  Icons.history,
                                  size: 36,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          titleIconCoversion(
                            'I have 0.00304843 Bitcoin',
                            ImageStyle.bitcoinbtclogo,
                            'BTC',
                            '\$90.00',
                            '1.40583945',
                            1,
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 8),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: ColorStyle.darkestBlueSignUp.withOpacity(0.7),
                                  borderRadius: EffectStyle.radiusCustom(30)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'CUSTOM',
                                  style: TextStylesSFCompactDisplay.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: ColorStyle.darkestBlueSignUp.withOpacity(0.7),
                                    borderRadius: EffectStyle.radiusCustom(30)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'MIN',
                                  style: TextStylesSFCompactDisplay.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: ColorStyle.darkestBlueSignUp.withOpacity(0.7),
                                    borderRadius: EffectStyle.radiusCustom(30)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'HALF',
                                  style: TextStylesSFCompactDisplay.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: ColorStyle.darkestBlueSignUp.withOpacity(0.7),
                                    borderRadius: EffectStyle.radiusCustom(30)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'ALL',
                                  style: TextStylesSFCompactDisplay.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 16,),
                              Expanded(child: Container(height: 0.6, color: Colors.white.withOpacity(0.6),)),
                              SizedBox(width: 10,),
                              Image.asset(ImageStyle.exchangeGreen, height: 50,),
                              SizedBox(width: 10,),
                              Expanded(child: Container(height: 0.6, color: Colors.white.withOpacity(0.6),)),
                              SizedBox(width: 16,),
                            ],
                          ),
                          titleIconCoversion(
                            'I want Ethereum',
                            ImageStyle.eth,
                            'ETH',
                            '\$52,269.99',
                            '19.9859257',
                            2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 116,
                  width: MediaQuery.of(context).size.width,
                  padding: EffectStyle.padding(10, 10, 0, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: EffectStyle.radiusCustom(12),
                          child: Image.asset(
                            ImageStyle.bg207,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: 142,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EffectStyle.padding(16, 16, 10, 10),
                        decoration: BoxDecoration(
                            color: ColorStyle.darkestBlue.withOpacity(0.4),
                            borderRadius: EffectStyle.radiusCustom(12)),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Exchanging',
                                style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                  color: ColorStyle.primaryWhite,
                                ),
                              ),
                            ),
                            SizedBox(height: 6,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Bitcoin',
                                      style: TextStylesSFCompactDisplay.textStyles_16.apply(
                                        color: ColorStyle.primaryWhite,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          ImageStyle.bitcoinbtclogo,
                                          height: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          'BTC',
                                          style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '1.40583945',
                                          style: TextStylesSFCompactDisplay.textStyles_25.apply(
                                            color: ColorStyle.hex('#F7931A'),
                                            fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(width: 4,),
                                        Text(
                                          'BTC',
                                          style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                            color: ColorStyle.hex('#F7931A'),
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '\$53,437.93',
                                      style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                        color: ColorStyle.primaryWhite.withOpacity(0.7),
                                      ),
                                    )
                                  ],
                                ),)
                              ],
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 116,
                  width: MediaQuery.of(context).size.width,
                  padding: EffectStyle.padding(10, 10, 0, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: EffectStyle.radiusCustom(12),
                          child: Image.asset(
                            ImageStyle.bg207,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: 142,
                          ),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          padding: EffectStyle.padding(16, 16, 10, 10),
                          decoration: BoxDecoration(
                              color: ColorStyle.darkestBlue.withOpacity(0.4),
                              borderRadius: EffectStyle.radiusCustom(12)),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Recieving',
                                  style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        'Ethereum',
                                        style: TextStylesSFCompactDisplay.textStyles_16.apply(
                                          color: ColorStyle.primaryWhite,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            ImageStyle.eth,
                                            height: 18,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            'ETH',
                                            style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '19.9859257',
                                            style: TextStylesSFCompactDisplay.textStyles_25.apply(
                                                color: ColorStyle.hex('#627EEA'),
                                                fontWeightDelta: 2
                                            ),
                                          ),
                                          SizedBox(width: 4,),
                                          Text(
                                            'ETH',
                                            style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                                color: ColorStyle.hex('#627EEA'),
                                                fontWeightDelta: 2
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$52,269.99',
                                        style: TextStylesSFCompactDisplay.textStyles_15.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.7),
                                        ),
                                      )
                                    ],
                                  ),)
                                ],
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                InkWell(
                  child: Container(
                    padding: EffectStyle.padding(10, 10, 0, 0),
                    child: Stack(
                      children: [
                        Image.asset(ImageStyle.bg15410, height: 50, width: MediaQuery.of(context).size.width, fit: BoxFit.fill,),
                        Positioned(
                          top: 6,
                          // bottom: 0,
                          left: 0,
                          right: 0,
                          child: Text(
                          'Exchange Now',
                          textAlign: TextAlign.center,
                          style: TextStylesSFCompactDisplay.textStyles_20.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 1,
                          ),
                        ),)
                      ],
                    ),
                  ),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
