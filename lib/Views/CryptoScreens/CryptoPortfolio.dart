
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ChatWithUs.dart';
import 'package:advanced_capital_pay/Controllers/Crypto/CryptoPortfolioController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import 'CryptoTransactionList.dart';


class CryptoPortfolio extends StatelessWidget {
  CryptoPortfolio({Key? key}) : super(key: key);

  final controller = Get.put(CryptoPortfolioController());
  SwiperController _controller = SwiperController();


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

  swiperView() {
    return Container(
      height: 300,
      child: Swiper(
        autoplay: false,
        loop: false,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(top: 100),
          builder: new DotSwiperPaginationBuilder(
            color: ColorStyle.grayColor,
            activeColor: ColorStyle.primaryWhite,
          ),
        ),
        // control: SwiperControl(
        //   padding: EdgeInsets.only(left: 6, right: 6),
        //   size: 26,
        //   color: Colors.white,
        //   disableColor: Colors.white,
        //   iconPrevious: Icons.arrow_back_ios_outlined,
        //   iconNext: Icons.arrow_forward_ios,
        // ),
        controller: _controller,

        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Image.asset(
                    ImageStyle.group_2222,
                    fit: BoxFit.fitHeight,
                    width: 240,
                    height: 240,
                  ),
                )
              ],
            ),
            onTap: () {

            },
          );
        },
        onIndexChanged: (index) {

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CryptoPortfolioController>(
        init: CryptoPortfolioController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Stack(
            children: [
              // Positioned(
              //     top: 0,
              //     bottom: 0,
              //     left: 0,
              //     right: 0,
              //     child: Image.asset(ImageStyle.bgGradient, fit: BoxFit.fill,)),
              BackgroundImage(
                imageName: ImageStyle.bgGradient,
              ),
              Scaffold(
                appBar: AppBarStyleTitle(
                  title: '',
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
                        InkWell(
                          child: Image.asset(ImageStyle.bell, color: ColorStyle.primaryWhite, height: 30,),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Image.asset(
                            ImageStyle.chat,
                            height: 26,
                          ),
                          onTap: () {
                            ChatWithUs.chatWithUs();
                          },
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
                body: Column(
                  children: [
                    swiperView(),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: EffectStyle.padding(16, 16, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: iconTitleSendRecieveTrade(
                                'Send', ImageStyle.Iconsend),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: iconTitleSendRecieveTrade(
                                'Receive', ImageStyle.Iconrecievemoney),
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
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                      height: double.infinity,
                      padding: EffectStyle.padding(16, 16, 16, 16),
                      decoration: BoxDecoration(
                        color: ColorStyle.hex('#001240'),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "My Assets",
                                  style: TextStylesSFCompactDisplay.textStyles_18.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      child: Icon(Icons.search, color: ColorStyle.primaryWhite, size: 30),
                                      onTap: () {},
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      child: Image.asset(
                                        ImageStyle.settings_sliders,
                                        height: 23,
                                      ),
                                      onTap: () {

                                      },
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      child: Icon(Icons.add, color: ColorStyle.primaryWhite, size: 30,),
                                      onTap: () {},
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.images.length,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 10,);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorStyle.blueLight
                                            .withOpacity(.1),
                                        borderRadius:
                                        BorderRadius.circular(6),
                                      ),
                                      padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    controller.chooseSaving[
                                                    index],
                                                    style: TextStylesSFCompactDisplay
                                                        .textStyles_14
                                                        .apply(
                                                        color: ColorStyle
                                                            .primaryWhite,
                                                        fontWeightDelta:
                                                        1),
                                                  ),
                                                  Text(
                                                    // 'Spare change',
                                                    controller
                                                        .chooseSaving1[
                                                    index],
                                                    style: TextStylesSFCompactDisplay
                                                        .textStyles_14
                                                        .apply(
                                                        color: ColorStyle
                                                            .primaryWhite,
                                                        fontWeightDelta:
                                                        1),
                                                  ),
                                                  Text(
                                                    // 'Spare change',
                                                    controller
                                                        .chooseSaving2[
                                                    index],
                                                    style: TextStylesSFCompactDisplay
                                                        .textStyles_12
                                                        .apply(
                                                        color: Colors.red,
                                                        fontWeightDelta:
                                                        1),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(child: Container(
                                            child: Image.asset(
                                              ImageStyle.light2,
                                              // height: 38,
                                            ),
                                            padding: EffectStyle.padding(8, 8, 0, 0),
                                          )),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                controller
                                                    .chooseSaving3[index],
                                                style: TextStylesSFCompactDisplay
                                                    .textStyles_14
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite,
                                                    fontWeightDelta:
                                                    1),
                                              ),
                                              Text(
                                                controller
                                                    .chooseSaving4[index],
                                                style: TextStylesSFCompactDisplay
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
                          ],
                        ),
                      ),
                    ),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
