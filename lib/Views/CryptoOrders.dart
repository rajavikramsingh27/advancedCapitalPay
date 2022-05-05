import 'package:advanced_capital_pay/Views/CryptoDashboard.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/ComponentsTitleInputs.dart';
import '../Components/NewTransfers.dart';
import '../Controllers/CryptoOrdersController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:get/utils.dart';
import 'dart:ui';

class CryptoOrders extends StatelessWidget {
  CryptoOrders({Key? key}) : super(key: key);

  final controller = Get.put(CryptoOrdersController());

  minusPlus() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 3,
            width: 26,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10)
            ),
          ),
          Container(
            width: 1,
            height: 30,
            // margin: EdgeInsets.only(left: 4, right: 4),
            color: ColorStyle.primaryWhite,
          ),
          Icon(Icons.add, size: 36, color: ColorStyle.primaryWhite,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(ImageStyle.bgGradient)),
        BackgroundImage(
          imageName: ImageStyle.tiardschulzb8dA3eY5VrYunsplash,
        ),
        Scaffold(
            backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
            body: GetBuilder(
                init: CryptoOrdersController(),
                initState: (state) {
                  controller.reset();
                },
                builder: (authController) {
                  return Obx(
                    () => SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8),
                          SafeArea(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 16,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      ImageStyle.cryptoExchage,
                                      width: 22,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'BTC/USDT',
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_16
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: Image.asset(
                                      ImageStyle.cryptoHome,
                                      height: 44,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      ImageStyle.cryptoFilter,
                                      height: 44,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      ImageStyle.cryptoStar,
                                      height: 44,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      ImageStyle.cryptoSignOut,
                                      height: 44,
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                ],
                              )
                            ],
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EffectStyle.padding(16, 16, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(ImageStyle.bitcoinbtclogo, height: 40,),
                                    SizedBox(width: 6),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BTC price',
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 0,
                                          ),
                                        ),
                                        Text(
                                          '63, 146.43',
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_26
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '-1.14%',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay.textStyles_14.apply(
                                        color: ColorStyle.hex('#FF0000'),
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Image.asset(ImageStyle.downCrypto, height: 40,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Expanded(child: Column(
                                children: [
                                  Image.asset(ImageStyle.graph, fit: BoxFit.fill,),
                                  SizedBox(height: 16,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '18:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                      Text(
                                        '19:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                      Text(
                                        '20:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                      Text(
                                        '21:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                      Text(
                                        '22:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                      Text(
                                        '23:00',
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(0.6),
                                          fontWeightDelta: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                              Container(
                                width: 100,
                                child: ListView.separated(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: controller.arrTradeNumbersSelected.length,
                                  padding: EdgeInsets.only(bottom: 20),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 2,);
                                  },
                                  itemBuilder: (BuildContext context, int index) {
                                    return InkWell(
                                      child: Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        decoration: controller.arrTradeNumbersSelected[index] ? BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(ImageStyle.bgTradeCount)
                                            )
                                        ) : BoxDecoration(),
                                        child: Text(
                                          controller.arrTradeNumbers[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay.textStyles_11.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        for (int i = 0; i < controller.arrTradeNumbersSelected.length; i++) {
                                          if (i == index) {
                                            controller.arrTradeNumbersSelected.value[i] = true;
                                          } else {
                                            controller.arrTradeNumbersSelected.value[i] = false;
                                          }
                                        }
                                        controller.arrTradeNumbersSelected.add(false);
                                        controller.arrTradeNumbersSelected.removeLast();
                                      },
                                    );
                                  }),),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 40,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.arrSelectedMonths.length,
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                ),
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 10,
                                  );
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        controller.chooseSaving[index],
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay
                                            .textStyles_12
                                            .apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      height: 38,
                                      width: 60,
                                      // decoration: BoxDecoration(
                                      //   color: ColorStyle.blueLight.withOpacity(.2),
                                      //   borderRadius: BorderRadius.circular(14),
                                      // ),
                                      decoration: controller
                                          .arrSelectedMonths[index]
                                          ? BoxDecoration(
                                        color: ColorStyle.hex('#0090FA'),
                                        borderRadius:
                                        EffectStyle.radiusCustom(10),
                                      )
                                          : BoxDecoration(
                                        color: ColorStyle.hex('#273564'),
                                        borderRadius:
                                        EffectStyle.radiusCustom(10),
                                      ),
                                    ),
                                    onTap: () {
                                      for (int i = 0; i < controller.arrSelectedMonths.length; i++) {
                                        if (i == index) {
                                          controller.arrSelectedMonths.value[i] = true;
                                        } else {
                                          controller.arrSelectedMonths.value[i] = false;
                                        }
                                      }
                                      controller.arrSelectedMonths.add(false);
                                      controller.arrSelectedMonths.removeLast();
                                    },
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: ColorStyle.blueSKY.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ListView.builder(
                              padding: EffectStyle.padding(16, 16, 0, 0),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              // scrollDirection: Axis.horizontal,
                              // padding: EdgeInsets.only(
                              //   left: 16,
                              //   right: 16,
                              //   top: 0,
                              //   bottom: 16,
                              // ),
                              itemCount: 12,
                              // separatorBuilder: (context, index) {
                              //   return Container(
                              //     height: 0.3,
                              //     width: double.infinity,
                              //     color: ColorStyle.whiteDuskyCrypto,
                              //     margin: EdgeInsets.only(
                              //         top: 16, bottom: 16),
                              //   );
                              // },
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '1,567890',
                                          // controller.chooseSaving[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          padding: EdgeInsets.only(right: 6),
                                          child: Text(
                                            '63.300,97',
                                            // controller.chooseSaving[index],
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.green,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),
                                          color: ColorStyle.green
                                              .withOpacity(0.3),
                                          width: (index%2==0) ? 100 : 80,
                                          height: 24,
                                        ),
                                      ],
                                    ),),
                                    Expanded(child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(left: 6),
                                          width: (index%2==0) ? 100 : 80,
                                          height: 24,
                                          child: Text(
                                            '63.300,97',
                                            // controller.chooseSaving[index],
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: Colors.red,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),
                                          color: Colors.red.withOpacity(0.3),
                                        ),
                                        Text(
                                          '1,567890',
                                          // controller.chooseSaving[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                      ],
                                    )),
                                  ],
                                );
                              }),
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: ColorStyle.blueSKY.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 48,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'To Buy',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_13
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        colors: [
                                          ColorStyle.hex('#00C73F').withOpacity(0),
                                          ColorStyle.hex('#00C73F'),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        // stops: [0.8, 1],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                          color: ColorStyle.grey.withOpacity(0.7),
                                          // spreadRadius: 4,
                                          blurRadius: 6,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    // Get.to(CryptoTransactionList());
                                  },
                                ),
                                InkWell(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'To Buy',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_13
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                    width: 111,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(ImageStyle.bgToSell)
                                        )
                                    ),
                                  ),
                                  onTap: () {
                                    // Get.to(CryptoTransactionList());
                                  },
                                ),
                                InkWell(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Order book',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_13
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                    width: 111,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      color: ColorStyle.blueLight
                                          .withOpacity(.2),
                                    ),
                                  ),
                                  onTap: () {
                                    // Get.to(CryptoTransactionList());
                                  },
                                ),
                              ],
                            )
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: ColorStyle.blueSKY.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            // color: ColorStyle.yellow,
                            height: 40,
                            child: ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(
                                  left: 22,
                                  right: 22,
                                  top: 0,
                                  bottom: 0,
                                ),
                                itemCount: controller.chooseSaving3.length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 16,);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 16, right: 16),
                                      alignment: Alignment.center,
                                      child: Text(
                                        // '1 M',
                                        controller.chooseSaving3[index],
                                        textAlign: TextAlign.center,
                                        style: TextStylesSFCompactDisplay
                                            .textStyles_10
                                            .apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: ColorStyle.blueLight
                                            .withOpacity(.2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onTap: () {
                                      // Get.to(CryptoTransactionList());
                                    },
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 14, right: 14),
                            child: Container(
                              padding: EdgeInsets.only(left: 14, right: 14),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Price:',
                                    // controller.chooseSaving3[index],
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  Text(
                                    '63,146.47',
                                    // controller.chooseSaving3[index],
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_16
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  minusPlus(),
                                ],
                              ),
                              height: 60,
                              decoration: BoxDecoration(
                                color: ColorStyle.blueLight
                                    .withOpacity(.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              // padding: EdgeInsets.only(left: 16, right: 16),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Quantity:',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        Text(
                                          '800',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        minusPlus(),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  SfSlider(
                                    min: 0.toInt(),
                                    max: 100.toInt(),
                                    value: controller.rangeValue.value,
                                    enableTooltip: true,
                                    minorTicksPerInterval: 1,
                                    activeColor: ColorStyle.primaryWhite,
                                    inactiveColor: ColorStyle.blueLight
                                        .withOpacity(.2),
                                    onChanged: (value) {
                                      controller.rangeValue.value = value;
                                    },
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '0%:',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        Text(
                                          '50%',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        Text(
                                          '75%:',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                        Text(
                                          'Max',
                                          // controller.chooseSaving3[index],
                                          textAlign: TextAlign.center,
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_14
                                              .apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                              // height: 60,
                              // width: 72,
                              decoration: BoxDecoration(
                                  color: ColorStyle.blueLight
                                      .withOpacity(.2),
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    width: 1,
                                    color: ColorStyle.grey.withOpacity(.3),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total:',
                                    // controller.chooseSaving3[index],
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  Text(
                                    '1.07',
                                    // controller.chooseSaving3[index],
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_16
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  minusPlus(),
                                ],
                              ),
                              height: 60,
                              // width: 72,
                              decoration: BoxDecoration(
                                color: ColorStyle.blueLight
                                    .withOpacity(.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 14, right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Available:',
                                  // controller.chooseSaving3[index],
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_14
                                      .apply(
                                    color: ColorStyle.primaryWhite,
                                    // fontWeightDelta: 2,
                                  ),
                                ),
                                Text(
                                  '1.02',
                                  // controller.chooseSaving3[index],
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_14
                                      .apply(
                                    color: ColorStyle.primaryWhite.withOpacity(0.7),
                                    // fontWeightDelta: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageStyle.bgBuyBTC)
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Buy BTC',
                                style: TextStylesSFCompactDisplay
                                    .textStyles_16
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ),
                            onTap: () {

                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: ColorStyle.blueSKY.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Open Orders',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                      ),
                                    ),
                                    decoration: controller.isOrder.value ? BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(ImageStyle.bgOrdComm)
                                        )
                                    ) : BoxDecoration(),
                                  ),
                                  onTap: () {
                                    controller.isOrder.value = true;
                                  },
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Commercial history',
                                      textAlign: TextAlign.center,
                                      style: TextStylesSFCompactDisplay.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                      ),
                                    ),
                                    decoration: !controller.isOrder.value ? BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(ImageStyle.bgOrdComm)
                                        )
                                    ) : BoxDecoration(),
                                  ),
                                  onTap: () {
                                    controller.isOrder.value = false;
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 3,
                            decoration: BoxDecoration(
                              color: ColorStyle.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 16),
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Currency',
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_12
                                      .apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 0,
                                  ),
                                ),
                                Text(
                                  'Information',
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_12
                                      .apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 0,
                                  ),
                                ),
                                Text(
                                  'Finalized',
                                  textAlign: TextAlign.center,
                                  style: TextStylesSFCompactDisplay
                                      .textStyles_12
                                      .apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 0,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 40,
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(ImageStyle.bgCancelCryptoOrder)
                                    )
                                  ),
                                  child: Text(
                                    'Finalized',
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 0,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            child: ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                // scrollDirection: Axis.horizontal,
                                itemCount: 8,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 12,);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 0,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: (index%2==0) ? BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(ImageStyle.bgRectangle125)
                                          )
                                      ) : BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(ImageStyle.bgRectangle1255)
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'BTC',
                                                          // controller.chooseSaving4[index],
                                                          textAlign: TextAlign.center,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_14
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                            // fontWeightDelta: 2,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Bitcoin',
                                                          // controller.chooseSaving4[index],
                                                          textAlign: TextAlign.center,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_11
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                          ),
                                                        ),
                                                      ],
                                                    ),),
                                                    Expanded(child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Price:',
                                                          textAlign: TextAlign.left,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_11
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                            // fontWeightDelta: 2,
                                                          ),
                                                        ),
                                                        Text(
                                                          '63,146.47',
                                                          textAlign: TextAlign.left,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_11
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                          ),
                                                        ),
                                                      ],
                                                    ),),
                                                  ],
                                                ),
                                                SizedBox(height: 6,),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Expanded(child: Text(
                                                      'Buy',
                                                      textAlign: TextAlign.left,
                                                      style:
                                                      TextStylesSFCompactDisplay
                                                          .textStyles_11
                                                          .apply(
                                                        color:
                                                        ColorStyle.green,
                                                        fontWeightDelta: 1,
                                                      ),
                                                    ),),
                                                    Expanded(child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Quantity:',
                                                          textAlign: TextAlign.center,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_11
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                            // fontWeightDelta: 2,
                                                          ),
                                                        ),
                                                        Text(
                                                          '1.04983 BTC',
                                                          textAlign: TextAlign.left,
                                                          style:
                                                          TextStylesSFCompactDisplay
                                                              .textStyles_11
                                                              .apply(
                                                            color:
                                                            ColorStyle.primaryWhite,
                                                          ),
                                                        ),
                                                      ],
                                                    ),)
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            height: 50,
                                            width: 50,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 0,
                                                  bottom: 0,
                                                  left: 0,
                                                  right: 0,
                                                  child: CircularProgressIndicator(
                                                  backgroundColor: ColorStyle.grey.withOpacity(0.4),
                                                  valueColor: AlwaysStoppedAnimation(
                                                    ColorStyle.primaryWhite,
                                                  ),
                                                  value: 6/10,
                                                  strokeWidth: 2.5,
                                                ),),
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  alignment: Alignment.center,
                                                  // padding: EdgeInsets.only(bottom: 8, right: 5),
                                                  child: Text(
                                                    '14%',
                                                    textAlign: TextAlign.left,
                                                    style:
                                                    TextStylesSFCompactDisplay
                                                        .textStyles_14
                                                        .apply(
                                                      color:
                                                      ColorStyle.primaryWhite,
                                                      fontWeightDelta: 2
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(
                                            width: 86,
                                            height: 40,
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(ImageStyle.bgCancelCryptoOrder)
                                                )
                                            ),
                                            child: Text(
                                              'Cancel',
                                              textAlign: TextAlign.center,
                                              style: TextStylesSFCompactDisplay
                                                  .textStyles_12
                                                  .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {

                                    },
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
