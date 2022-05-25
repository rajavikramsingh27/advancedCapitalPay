import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Controllers/Crypto/CryptoDialogBottomSheet.dart';
import 'package:advanced_capital_pay/Controllers/TransferBetweenAccountController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'dart:ui';

import 'CryptoRecieveAmount.dart';
import 'CryptoScanOrTake.dart';
import 'CryptoTransactionDetails.dart';

class CryptoTransactionList extends StatelessWidget {
  CryptoTransactionList({Key? key}) : super(key: key);

  final controller = Get.put(TransferBetweenAccountController());

  iconTitleSendRecieveTrade(String title, String image) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            ColorStyle.hex('#BF55D7'),
            ColorStyle.hex('#56F9F6'),
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, color: ColorStyle.primaryWhite, height: 30
              // fit: BoxFit.cover,
              ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStylesSFCompactDisplay.textStyles_12.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: TransferBetweenAccountController(),
      initState: (state) {

      },
      builder: (auth) {
        return Stack(
          children: [
            Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  ImageStyle.bgGradient,
                  fit: BoxFit.fill,
                )),
            BackgroundImage(
              imageName: ImageStyle.bgTransactionListCripto,
            ),
            Scaffold(
              appBar: AppBarStyleTitle(
                title: 'Bitcoin (BTC)',
                styleTitle:
                TextStylesSFCompactDisplay.textStyles_20.apply(
                  color: ColorStyle.primaryWhite,
                  fontWeightDelta: 2,
                ),
                leadingButton: IconButton(
                  icon: Image.asset(
                    ImageStyle.back_circle,
                    height: 30,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                trailingButton: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Icon(Icons.ios_share),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                          height: 30,
                          padding: EffectStyle.padding(0, 0, 0, 0),
                          decoration: BoxDecoration(
                            color: ColorStyle.hex('#3B86D1'),
                            borderRadius: EffectStyle.radiusCustom(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ColorStyle.hex('#3B86D1'),
                                    borderRadius:
                                    EffectStyle.radiusCustom(50),
                                    border: Border.all(
                                        color: ColorStyle.primaryWhite,
                                        width: 1.5)),
                                child: Text(
                                  '\$',
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_16
                                      .apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'USD',
                                style: TextStylesSFCompactDisplay
                                    .textStyles_12
                                    .apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
              body: SingleChildScrollView(
                  padding: EffectStyle.padding(16, 16, 0, 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        ImageStyle.BTClogo,
                        height: 90,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '1.35346 BTC',
                        style: TextStylesSFCompactDisplay.textStyles_32
                            .apply(
                          color: ColorStyle.yellowCrypto,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '10,035.35 USD',
                        style: TextStylesSFCompactDisplay.textStyles_22
                            .apply(
                          color: ColorStyle.primaryWhite,
                        ),
                      ),
                      Text(
                        '+7.47% | +\$2,414.62',
                        style: TextStylesSFCompactDisplay.textStyles_18
                            .apply(
                          color: ColorStyle.greenlight,
                          fontWeightDelta: 0,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              child: iconTitleSendRecieveTrade(
                                  'Send', ImageStyle.Iconsend),
                              onTap: () {
                                // Get.to(CryptoScanOrTake());
                                CryptoDialogBottomSheet.bottomsheetGet(
                                    CryptoScanOrTake());
                              },
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: InkWell(
                              child: iconTitleSendRecieveTrade(
                                  'Receive', ImageStyle.Iconrecievemoney),
                              onTap: () {
                                Get.to(CryptoRecieveAmount());
                              },
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: iconTitleSendRecieveTrade(
                                'Trade', ImageStyle.Icontrade),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            ImageStyle.graphCrypto,
                            width: MediaQuery.of(context).size.width,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 1.0,
                                sigmaY: 1.0,
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 190,
                                decoration: BoxDecoration(
                                    color: ColorStyle.hex('#263767')
                                        .withOpacity(0.6),
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    border: Border.all(
                                        color: ColorStyle.hex('#C6C3B2')
                                            .withOpacity(0.4),
                                        width: 0.6),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          ColorStyle.hex('#263767'),
                                          ColorStyle.hex('#010B1D'),
                                        ])),
                                // color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   child: Image.asset(ImageStyle.graphCrypto,
                      //   width: MediaQuery.of(context).size.width,
                      //   )
                      // ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#273564'),
                          borderRadius: EffectStyle.radiusCustom(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: (controller.index.value == 0)
                                        ? BoxDecoration(
                                      color: ColorStyle.hex('#0090FA'),
                                      borderRadius:
                                      EffectStyle.radiusCustom(10),
                                    )
                                        : BoxDecoration(),
                                    child: Text(
                                      '1 Day',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    controller.index.value = 0;
                                  },
                                )),
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: (controller.index.value == 1)
                                        ? BoxDecoration(
                                      color: ColorStyle.hex('#0090FA'),
                                      borderRadius:
                                      EffectStyle.radiusCustom(10),
                                    )
                                        : BoxDecoration(),
                                    child: Text(
                                      '1 W',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    controller.index.value = 1;
                                  },
                                )),
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: (controller.index.value == 2)
                                        ? BoxDecoration(
                                      color: ColorStyle.hex('#0090FA'),
                                      borderRadius:
                                      EffectStyle.radiusCustom(10),
                                    )
                                        : BoxDecoration(),
                                    child: Text(
                                      '1 M',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    controller.index.value = 2;
                                  },
                                )),
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: (controller.index.value == 3)
                                        ? BoxDecoration(
                                      color: ColorStyle.hex('#0090FA'),
                                      borderRadius:
                                      EffectStyle.radiusCustom(10),
                                    )
                                        : BoxDecoration(),
                                    child: Text(
                                      '3 M',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    controller.index.value = 3;
                                  },
                                )),
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: (controller.index.value == 4)
                                        ? BoxDecoration(
                                      color: ColorStyle.hex('#0090FA'),
                                      borderRadius:
                                      EffectStyle.radiusCustom(10),
                                    )
                                        : BoxDecoration(),
                                    child: Text(
                                      '1 Y',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    controller.index.value = 4;
                                  },
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#274174'),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding:
                        EdgeInsets.only(left: 10, right: 10, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Transaction History',
                                        style: TextStylesSFCompactDisplay
                                            .textStyles_11
                                            .apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: ColorStyle.bluedark,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'All Transactions',
                                              style:
                                              TextStylesSFCompactDisplay
                                                  .textStyles_10
                                                  .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color:
                                              ColorStyle.primaryWhite,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: ColorStyle.bluedark,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'From',
                                              style:
                                              TextStylesSFCompactDisplay
                                                  .textStyles_10
                                                  .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color:
                                              ColorStyle.primaryWhite,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: ColorStyle.bluedark,
                                          borderRadius:
                                          BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'To',
                                              style:
                                              TextStylesSFCompactDisplay
                                                  .textStyles_10
                                                  .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color:
                                              ColorStyle.primaryWhite,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 0.3,
                              width: double.infinity,
                              color: ColorStyle.whiteDuskyCrypto,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 0,
                                  bottom: 16,
                                ),
                                itemCount: 4,
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: 0.3,
                                    width: double.infinity,
                                    color: ColorStyle.whiteDuskyCrypto,
                                    margin: EdgeInsets.only(
                                        top: 16, bottom: 16),
                                  );
                                },
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return InkWell(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Friday, 21st December 2021',
                                          style:
                                          TextStylesSFCompactDisplay
                                              .textStyles_10
                                              .apply(
                                            color:
                                            ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: ColorStyle.hex(
                                                    '#0090FA'),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    16),
                                              ),
                                              padding: EdgeInsets.all(10),
                                              child: Image.asset(
                                                ImageStyle
                                                    .Iconrecievemoney,
                                                color: ColorStyle
                                                    .primaryWhite,
                                                height: 40,
                                                width: 40,
                                                // fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Received',
                                                            style: TextStylesSFCompactDisplay
                                                                .textStyles_13
                                                                .apply(
                                                              color: ColorStyle
                                                                  .primaryWhite,
                                                              fontWeightDelta:
                                                              2,
                                                            ),
                                                          ),
                                                          Text(
                                                            '+0.392 BTC',
                                                            style: TextStylesSFCompactDisplay
                                                                .textStyles_12
                                                                .apply(
                                                              color: ColorStyle
                                                                  .primaryWhite,
                                                              fontWeightDelta:
                                                              2,
                                                            ),
                                                          ),
                                                        ],
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Bc1qpphsvm6v9qpn4h3mfnfus0qnnd64035uz3ue',
                                                        style:
                                                        TextStylesSFCompactDisplay
                                                            .textStyles_10
                                                            .apply(
                                                          color: ColorStyle
                                                              .yellowCrypto,
                                                          // fontWeightDelta: 2,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Text(
                                                            '12th Feb, 18:40',
                                                            style: TextStylesSFCompactDisplay
                                                                .textStyles_10
                                                                .apply(
                                                              color: ColorStyle
                                                                  .whiteDuskyCrypto,
                                                              // fontWeightDelta: 2,
                                                            ),
                                                          ),
                                                          Text(
                                                            '+ \$2,3535.565',
                                                            style: TextStylesSFCompactDisplay
                                                                .textStyles_11
                                                                .apply(
                                                              color: ColorStyle
                                                                  .whiteDuskyCrypto,
                                                              // fontWeightDelta: 2,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      CryptoDialogBottomSheet
                                          .bottomsheetGet(
                                          CryptoTransactionDetails());
                                    },
                                  );
                                }),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        );
      },
    );


  }
}
