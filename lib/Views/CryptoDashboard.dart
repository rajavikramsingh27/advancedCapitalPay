import 'package:advanced_capital_pay/Controllers/CryptoDashboardController.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/CryptoTransactionList.dart';
import '../Views/CryptoPortfolio.dart';
import '../Views/CryptoMarket.dart';
import 'CryptoNewsCell.dart';
import '../Views/CryptoTrade.dart';
import '../Views/CryptoOrders.dart';
import '../Views/CryptoRecieve.dart';



class CryptoDashboard extends StatelessWidget {
  const CryptoDashboard({Key? key}) : super(key: key);

  iconTitle(String image, String title, [Function()? onTap]) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            color: ColorStyle.blueSKY.withOpacity(.2),
            border: Border.all(width: 1, color: ColorStyle.ligthBlue),
            borderRadius: BorderRadius.circular((64))),
        width: 64,
        height: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 26,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: TextStylesSFCompactDisplay.textStyles_9
                  .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
            ),
          ],
        ),
        // alignment: Alignment.center,
      ),
      onTap: onTap ,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CryptoDashboardController());
    return Stack(
      children: [
        BackgroundImage(
          imageName: ImageStyle.cryptoBG1,
        ),
        Scaffold(
            appBar: AppBarStyleCryptoDashboard(
              leadingButton: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  InkWell(
                    child: Image.asset(
                      ImageStyle.settings,
                      height: 26,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    child: Image.asset(
                      ImageStyle.bell,
                      height: 26,
                      color: ColorStyle.primaryWhite,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              trailingButton: Row(
                children: [
                  // SizedBox(width: 20,),
                  InkWell(
                    child: Image.asset(
                      ImageStyle.settings_sliders,
                      height: 26,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    child: Image.asset(
                      ImageStyle.chat,
                      height: 26,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 6,
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            body: GetBuilder<CryptoDashboardController>(
                init: CryptoDashboardController(),
                initState: (state) {
                  // controller.reset();
                  // print(controller.listSelected.value);
                },
                builder: (authController) {
                  return Obx(() => SingleChildScrollView(
                    // padding: EdgeInsets.only(left: 24,right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "TOTAL CRYPTO BALANCE",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_12
                                  .apply(
                                  color: ColorStyle.whiteDuskyCrypto,
                                  fontWeightDelta: 1),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: ColorStyle.whiteDuskyCrypto,
                              size: 16,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$ ",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_26
                                  .apply(
                                color: ColorStyle.whiteDuskyCrypto,
                              ),
                            ),
                            Text(
                              "21,048.13",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_32
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                // fontWeightDelta: 1
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "USD",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_20
                                  .apply(
                                color: ColorStyle.whiteDuskyCrypto,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "+7.47%",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_13
                                  .apply(
                                color: ColorStyle.greenDuskyCrypto,
                              ),
                            ),
                            Text(
                              "|",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_15
                                  .apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 0),
                            ),
                            Text(
                              "+\$2,414.62",
                              style: TextStylesSFCompactDisplay
                                  .textStyles_12
                                  .apply(
                                color: ColorStyle.greenDuskyCrypto,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              iconTitle(ImageStyle.chartss, 'Send'),
                              iconTitle(ImageStyle.charttts, 'Receive', () {
                                Get.to(CryptoRecieve());
                              }),
                              iconTitle(ImageStyle.chartdd, 'Trade', () {
                                Get.to(CryptoTrade());
                              }),
                              iconTitle(ImageStyle.chart, 'Wallets'),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              iconTitle(ImageStyle.charts, 'Orders', () {
                                Get.to(CryptoOrders());
                              }),
                              iconTitle(ImageStyle.chartErn, 'Earn'),
                              iconTitle(ImageStyle.markets, 'Markets', () {
                                Get.to(CryptoMarket());
                              }),
                              iconTitle(ImageStyle.NFT, 'NTF'),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorStyle.whiteDuskyCrypto,
                                borderRadius: BorderRadius.circular((40))),
                            height: 0.3,

                            // alignment: Alignment.center,
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MY PORTFOLIO",
                                style: TextStylesSFCompactDisplay
                                    .textStyles_15
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 1
                                ),
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Text(
                                      "See All",
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                          color: ColorStyle.blueSKY,
                                          fontWeightDelta: 1),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: ColorStyle.blueSKY,
                                          borderRadius:
                                          BorderRadius.circular((40))),
                                      height: 1,
                                      width: 54,

                                      // alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ListView.separated(
                            padding: EffectStyle.padding(24, 24, 0, 0),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.images.length,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorStyle.blueLight
                                        .withOpacity(.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 16,
                                      right: 16,
                                      top: 6,
                                      bottom: 6),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            controller.images[index],
                                            height: 38,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                controller
                                                    .chooseSaving[index],
                                                style: TextStylesSFCompactDisplay
                                                    .textStyles_14
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite,
                                                    fontWeightDelta: 1),
                                              ),
                                              Text(
                                                // 'Spare change',
                                                controller
                                                    .chooseSaving1[index],
                                                style: TextStylesSFCompactDisplay
                                                    .textStyles_14
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite,
                                                    fontWeightDelta: 1),
                                              ),
                                              Text(
                                                // 'Spare change',
                                                controller
                                                    .chooseSaving2[index],
                                                style:
                                                TextStylesSFCompactDisplay
                                                    .textStyles_12
                                                    .apply(
                                                    color: controller.chooseSaving2[index].contains('+') ? Colors.green : Colors.red,
                                                    fontWeightDelta:
                                                    1),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                          child: Container(
                                            child: Image.asset(
                                              ImageStyle.light2,
                                              // height: 38,
                                            ),
                                            padding:
                                            EffectStyle.padding(8, 8, 0, 0),
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            controller.chooseSaving3[index],
                                            style:
                                            TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 1),
                                          ),
                                          Text(
                                            controller.chooseSaving4[index],
                                            style:
                                            TextStylesSFCompactDisplay
                                                .textStyles_10
                                                .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.to(CryptoTransactionList());
                                },
                              );
                            }),

                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Text(
                                "Show My Full Portfolio",
                                style: TextStylesSFCompactDisplay
                                    .textStyles_12
                                    .apply(
                                    color: ColorStyle.blueSKY,
                                    fontWeightDelta: 1),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorStyle.blueSKY,
                                    borderRadius:
                                    BorderRadius.circular((40))),
                                height: 1,
                                width: 150,

                                // alignment: Alignment.center,
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          onTap: () {
                            Get.to(CryptoPortfolio());
                          },
                        ),
                        // SizedBox(height: 8,),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorStyle.whiteDuskyCrypto,
                                borderRadius: BorderRadius.circular((40))),
                            height: 0.3,
                            // width: 130,

                            // alignment: Alignment.center,
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "MY FAVORITES",
                                style: TextStylesSFCompactDisplay
                                    .textStyles_15
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 1
                                ),
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Text(
                                      "See All",
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                          color: ColorStyle.blueSKY,
                                          fontWeightDelta: 1),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: ColorStyle.blueSKY,
                                          borderRadius:
                                          BorderRadius.circular((40))),
                                      height: 1,
                                      width: 54,

                                      // alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        ListView.separated(
                            padding: EdgeInsets.only(left: 24, right: 24),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.images1.length,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding:
                                EdgeInsets.only(left: 10, right: 10),
                                height: 90,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          controller.images1[index],
                                          height: 38,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              // 'KFC',
                                              controller
                                                  .chooseSaving5[index],
                                              style:
                                              TextStylesSFCompactDisplay
                                                  .textStyles_14
                                                  .apply(
                                                  color: ColorStyle
                                                      .primaryWhite,
                                                  fontWeightDelta:
                                                  1),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              // 'Spare change',
                                              controller
                                                  .chooseSaving6[index],
                                              style:
                                              TextStylesSFCompactDisplay
                                                  .textStyles_14
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
                                    Expanded(
                                        child: Container(
                                          child: Image.asset(
                                            ImageStyle.light2,
                                            // height: 38,
                                          ),
                                          padding:
                                          EffectStyle.padding(6, 6, 0, 0),
                                        )),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.chooseSaving7[index],
                                          style: TextStylesPoppins
                                              .textStyles_14
                                              .apply(
                                              color: ColorStyle
                                                  .primaryWhite,
                                              fontWeightDelta: 2),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          controller.chooseSaving8[index],
                                          style: TextStylesPoppins
                                              .textStyles_12
                                              .apply(
                                            color: controller.chooseSaving8[index].contains('+') ? Colors.green : Colors.red,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: ColorStyle.blueSKY.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              );
                            }),

                        Container(
                          padding: EdgeInsets.only(
                              left: 24, right: 24, top: 16, bottom: 16),
                          child: Row(
                            children: [
                              Text(
                                "TOP GAINERS",
                                style: TextStylesSFCompactDisplay
                                    .textStyles_16
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 1
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Image.asset(
                                ImageStyle.fire,
                                height: 14,
                              )
                            ],
                          ),
                        ),
                        ListView.separated(
                            padding: EdgeInsets.only(left: 24, right: 24),
                            shrinkWrap: true,
                            itemCount: controller.images2.length,
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding:
                                EdgeInsets.only(left: 16, right: 16),
                                height: 90,
                                decoration: BoxDecoration(
                                  color: ColorStyle.blueSKY.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  // mainAxisAlignment:
                                  // MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            controller.images2[index],
                                            height: 38,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  // 'KFC',
                                                  controller
                                                      .chooseSaving9[index],
                                                  style: TextStylesSFCompactDisplay
                                                      .textStyles_14
                                                      .apply(
                                                      color: ColorStyle
                                                          .primaryWhite,
                                                      fontWeightDelta:
                                                      2),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  // 'Spare change',
                                                  controller.chooseSaving10[
                                                  index],
                                                  style:
                                                  TextStylesSFCompactDisplay
                                                      .textStyles_14
                                                      .apply(
                                                    color: ColorStyle
                                                        .whiteDuskyCrypto,
                                                    // fontWeightDelta: 1
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // 'Spare change',
                                      controller.chooseSaving11[index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_14
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 1
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      // 'Spare change',
                                      controller.chooseSaving12[index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_14
                                          .apply(
                                          color: ColorStyle.green,
                                          fontWeightDelta: 1),
                                      maxLines: 1,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Image.asset(
                                      ImageStyle.bell,
                                      color: ColorStyle.primaryWhite,
                                      height: 24,
                                    )
                                  ],
                                ),
                              );
                            }),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 0.3,
                          margin: EdgeInsets.only(left: 24, right: 24),
                          decoration: BoxDecoration(
                            color: ColorStyle.whiteDuskyCrypto,
                          ),
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "CRYPTO NEWS",
                                style: TextStylesSFCompactDisplay
                                    .textStyles_16
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 1
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 44,
                                  child: Text(
                                    "NEW",
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 1
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.ligthBlue,
                                      borderRadius:
                                      BorderRadius.circular(4)),
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 452,
                          child: ListView.separated(
                              padding: EdgeInsets.only(
                                left: 24,
                                right: 24,
                              ),
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 16,
                                );
                              },
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return CryptoNewsCell();
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ));
                }))
      ],
    );
  }
}
