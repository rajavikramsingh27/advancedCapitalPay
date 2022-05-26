import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Controllers/Crypto/CryptoMarketController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'package:get/utils.dart';
import 'dart:ui';
import 'CryptoNewsCell.dart';

class CryptoMarket extends StatelessWidget {
  CryptoMarket({Key? key}) : super(key: key);

  final controller = Get.put(CryptoMarketController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CryptoMarketController(),
      initState: (state) {
           controller.reset();
      },
      builder: (auth) {
        return Obx(() => Stack(
          children: [
            BackgroundImage(
              imageName: ImageStyle.bg206,
            ),
            Scaffold(
              // backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
              //   backgroundColor: ColorStyle.primaryWhite,
                backgroundColor: Colors.transparent,
                appBar: AppBarStyleTitle(
                  title: '',
                  styleTitle: TextStylesSFCompactDisplay.textStyles_20.apply(
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
                        InkWell(
                          child: Container(
                            height: 30,
                            padding: EffectStyle.padding(10, 10, 0, 0),
                            decoration: BoxDecoration(
                              color: ColorStyle.hex('#3B86D1'),
                              borderRadius: EffectStyle.radiusCustom(30),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageStyle.settings_sliders,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Filters',
                                  style: TextStylesSFCompactDisplay.textStyles_12
                                      .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 6,
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
                                      borderRadius: EffectStyle.radiusCustom(50),
                                      border: Border.all(
                                          color: ColorStyle.primaryWhite,
                                          width: 1.5)),
                                  child: Text(
                                    '\$',
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay.textStyles_16
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
                                  style: TextStylesSFCompactDisplay.textStyles_12
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
                body: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              child: Text(
                                'Coins',
                                style: TextStylesSFCompactDisplay
                                    .textStyles_20
                                    .apply(
                                  color: controller.isCoins.value
                                      ? ColorStyle.primaryWhite
                                      : ColorStyle.primaryWhite
                                      .withOpacity(0.7),
                                  fontWeightDelta: 2,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: controller.isCoins.value
                                              ? ColorStyle.hex('#24DCE3')
                                              : Colors.transparent,
                                          width: 2))),
                            ),
                            onTap: () {
                              controller.isCoins.value = true;
                            },
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            child: Container(
                              child: Text(
                                'NFT',
                                style: TextStylesSFCompactDisplay
                                    .textStyles_20
                                    .apply(
                                  color: !controller.isCoins.value
                                      ? ColorStyle.primaryWhite
                                      : ColorStyle.primaryWhite
                                      .withOpacity(0.7),
                                  fontWeightDelta: 2,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: !controller.isCoins.value
                                              ? ColorStyle.hex('#24DCE3')
                                              : Colors.transparent,
                                          width: 2))),
                            ),
                            onTap: () {
                              controller.isCoins.value = false;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          ImageStyle.bg204,
                          height: 100,
                          width: MediaQuery.of(context).size.width - 32,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 32,
                          alignment: Alignment.center,
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          decoration: BoxDecoration(
                            color: ColorStyle.darkestBlue.withOpacity(0.6),
                            borderRadius: EffectStyle.radiusCustom(10),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Market Cap',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_11
                                        .apply(
                                      color: ColorStyle.hex('#D1CCCC'),
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  Text(
                                    '\$ 255,61B',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_15
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 0,
                                    ),
                                  ),
                                  Text(
                                    '+3.61%',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_13
                                        .apply(
                                      color: ColorStyle.green,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '24th Volume',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_11
                                        .apply(
                                      color: ColorStyle.hex('#D1CCCC'),
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  Text(
                                    '\$ 94,34B',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_15
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 0,
                                    ),
                                  ),
                                  Text(
                                    '+0.77%',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_13
                                        .apply(
                                      color: ColorStyle.green,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BTC dominace',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_11
                                        .apply(
                                      color: ColorStyle.hex('#D1CCCC'),
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  Text(
                                    '\$ 432,34B',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_15
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 0,
                                    ),
                                  ),
                                  Text(
                                    '64.75%',
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_13
                                        .apply(
                                      color: ColorStyle.yellowCrypto,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                          padding: EffectStyle.padding(0, 0, 16, 0),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 44,
                                margin: EdgeInsets.only(left: 16, right: 16),
                                padding: EdgeInsets.only(left: 6, right: 6),
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex('#273564'),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: ColorStyle.primaryWhite,
                                      size: 30,
                                    ),
                                    Expanded(
                                        child: TextField(
                                          style:
                                          TextStylesPoppins.textStyles_16.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 0,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.only(bottom: 5),
                                            hintText: "Search for assets……..",
                                            hintStyle: TextStylesSFCompactDisplay
                                                .textStyles_15
                                                .apply(
                                              color: ColorStyle.grey,
                                              fontWeightDelta: 0,
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                          ),
                                          onChanged: (value) {},
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 40,
                                margin: EffectStyle.padding(16, 16, 0, 0),
                                decoration: BoxDecoration(),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: InkWell(
                                          child: Container(
                                            height: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: (controller.index.value ==
                                                0)
                                                ? BoxDecoration(
                                              color:
                                              ColorStyle.hex('#0090FA'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            )
                                                : BoxDecoration(
                                              color:
                                              ColorStyle.hex('#273564'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            ),
                                            child: Text(
                                              'Top 100',
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_11
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.index.value = 0;
                                          },
                                        )),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                        child: InkWell(
                                          child: Container(
                                            height: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: (controller.index.value ==
                                                1)
                                                ? BoxDecoration(
                                              color:
                                              ColorStyle.hex('#0090FA'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            )
                                                : BoxDecoration(
                                              color:
                                              ColorStyle.hex('#273564'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            ),
                                            child: Text(
                                              '% (24H)',
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_11
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.index.value = 1;
                                          },
                                        )),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                        child: InkWell(
                                          child: Container(
                                            height: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: (controller.index.value ==
                                                2)
                                                ? BoxDecoration(
                                              color:
                                              ColorStyle.hex('#0090FA'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            )
                                                : BoxDecoration(
                                              color:
                                              ColorStyle.hex('#273564'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            ),
                                            child: Text(
                                              'Trending',
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_11
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.index.value = 2;
                                          },
                                        )),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                        child: InkWell(
                                          child: Container(
                                            height: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: (controller.index.value ==
                                                3)
                                                ? BoxDecoration(
                                              color:
                                              ColorStyle.hex('#0090FA'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            )
                                                : BoxDecoration(
                                              color:
                                              ColorStyle.hex('#273564'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            ),
                                            child: Text(
                                              'Recently Added',
                                              textAlign: TextAlign.center,
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_11
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.index.value = 3;
                                          },
                                        )),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                        child: InkWell(
                                          child: Container(
                                            height: double.infinity,
                                            alignment: Alignment.center,
                                            decoration: (controller.index.value ==
                                                4)
                                                ? BoxDecoration(
                                              color:
                                              ColorStyle.hex('#0090FA'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            )
                                                : BoxDecoration(
                                              color:
                                              ColorStyle.hex('#273564'),
                                              borderRadius:
                                              EffectStyle.radiusCustom(
                                                  10),
                                            ),
                                            child: Text(
                                              'News',
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_11
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1,
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
                              if (controller.index.value == 0 ||
                                  controller.index.value == 1 ||
                                  controller.index.value == 2 ||
                                  controller.index.value == 3)
                                ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EffectStyle.padding(16, 16, 16, 16),
                                  shrinkWrap: true,
                                  itemCount: controller.images.length,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 1.0,
                                                sigmaY: 1.0,
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 82,
                                                decoration: BoxDecoration(
                                                  color:
                                                  ColorStyle.hex('#273564'),
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                // color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              // color: ColorStyle.secondryBlack.withOpacity(0.6),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            padding: EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                top: 16,
                                                bottom: 16),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      controller.images[index],
                                                      height: 50,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              controller
                                                                  .chooseSaving[
                                                              index],
                                                              style: TextStylesSFCompactDisplay
                                                                  .textStyles_11
                                                                  .apply(
                                                                  color: ColorStyle
                                                                      .primaryWhite,
                                                                  fontWeightDelta:
                                                                  1),
                                                            ),
                                                            SizedBox(
                                                              width: 3,
                                                            ),
                                                            Text(
                                                              controller
                                                                  .arrTypeCrypto[
                                                              index],
                                                              style: TextStylesSFCompactDisplay
                                                                  .textStyles_10
                                                                  .apply(
                                                                  color: ColorStyle.hex(
                                                                      controller.arrTypeCryptoColor[
                                                                      index]),
                                                                  fontWeightDelta:
                                                                  1),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          // 'Spare change',
                                                          controller
                                                              .chooseSaving1[
                                                          index],
                                                          style: TextStylesSFCompactDisplay
                                                              .textStyles_16
                                                              .apply(
                                                              color: ColorStyle
                                                                  .primaryWhite,
                                                              fontWeightDelta:
                                                              2),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .end,
                                                      children: [
                                                        Text(
                                                          controller
                                                              .chooseSaving3[
                                                          index],
                                                          style: TextStylesSFCompactDisplay
                                                              .textStyles_12
                                                              .apply(
                                                              color: ColorStyle
                                                                  .primaryWhite,
                                                              fontWeightDelta:
                                                              2),
                                                        ),
                                                        Container(
                                                          alignment:
                                                          Alignment.center,
                                                          padding: EffectStyle
                                                              .padding(
                                                              6, 6, 4, 4),
                                                          decoration: BoxDecoration(
                                                              color: controller
                                                                  .chooseSaving2[
                                                              index]
                                                                  .contains(
                                                                  '+')
                                                                  ? Colors.green
                                                                  : Colors.red,
                                                              borderRadius:
                                                              EffectStyle
                                                                  .radiusCustom(
                                                                  2)),
                                                          child: Text(
                                                            controller
                                                                .chooseSaving2[
                                                            index],
                                                            style: TextStylesSFCompactDisplay
                                                                .textStyles_11
                                                                .apply(
                                                                color: ColorStyle
                                                                    .primaryWhite,
                                                                fontWeightDelta:
                                                                2),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        // Get.to(CryptoTransactionList());
                                      },
                                    );
                                  },
                                ),
                              if (controller.index.value == 4)
                                ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    padding:
                                    EffectStyle.padding(16, 16, 16, 16),
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: 16,
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return CryptoNewsCell();
                                    }),
                            ],
                          ),
                        )),
                  ],
                ))
          ],
        ));
      },
    );


    ;
  }
}
