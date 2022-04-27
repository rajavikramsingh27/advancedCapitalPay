import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Controllers/MainDashboardController.dart';
import 'package:get/utils.dart';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import '../Views/MessagePage.dart';
import '../Views/AppSettings.dart';
import '../Components/SearchBarCustom.dart';



class MainDashboard extends StatelessWidget {
  MainDashboard({Key? key}) : super(key: key);

  final controller = Get.put(MainDashboardController());

  SwiperController _controller = SwiperController();

  swiperView() {
    return Container(
      height: 230,
      child: Swiper(
        autoplay: false,
        loop: false,
        itemCount: controller.arrCardsImage.length,
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
          return Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Image.asset(
              controller.arrCardsImage[index],
              // fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
              height: 250,
            ),
          );
        },
        onIndexChanged: (index) {
          controller.indexPage.value = index;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyleLeadingTitleTrailing(
            leadingImage: ImageStyle.ellipse2,
            nameUser: 'MR HARRISON SMITH',
            descriptionUser: 'Plus Personal Customer',
            timeLastLogin: 'Last Successful login: '+'02 Feb 2021'+'  '+'13:53:41',
            trailingAction: [
              IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 26,
                ),
                onPressed: () {
                  Get.to(MessagePage());
                },
              ),
              IconButton(
                icon: Image.asset(
                  ImageStyle.settings,
                  height: 26,
                ),
                onPressed: () {
                  Get.to(AppSettings());
                },
              ),
              SizedBox(
                width: 6,
              ),
            ],
          ),
          // AppBarStyle(),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: MainDashboardController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(
                () => SingleChildScrollView(
                  // padding: EffectStyle.padding(16, 16, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        padding: EffectStyle.padding(16, 16, 0, 0),
                        child: Column(
                          children: [
                            swiperView(),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 60,
                                    margin: EdgeInsets.only(right: 26),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Funds',
                                          style: TextStyles.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        Text(
                                          '\$2,713.23',
                                          style: TextStyles.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorStyle.darkestBlueSignUp,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 6, right: 6),
                                  width: 110,
                                  height: 30,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(ImageStyle.ethereum,
                                          height: 20),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 30,
                                        child: Text(
                                          '\$',
                                          textAlign: TextAlign.center,
                                          style: TextStyles.textStyles_16.apply(
                                            color: ColorStyle.secondryBlack,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorStyle.primaryWhite,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      Icon(
                                        Icons.currency_bitcoin,
                                        size: 20,
                                        color: ColorStyle.primaryWhite,
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorStyle.primaryWhite),
                                    // color: ColorStyle.blueSKY,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 60,
                                    margin: EdgeInsets.only(left: 26),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Balance',
                                          style: TextStyles.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        Text(
                                          '\$2,713.23',
                                          style: TextStyles.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorStyle.darkestBlueSignUp,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 91,
                                  height: 66,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(ImageStyle.transfer3,
                                          color: ColorStyle.darkestBlueSignUp,
                                          // width: MediaQuery.of(context).size.width,
                                          height: 25
                                          // fit: BoxFit.cover,
                                          ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Transfer',
                                        style: TextStyles.textStyles_8.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Container(
                                  width: 91,
                                  height: 66,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(ImageStyle.transfer3,
                                          color: ColorStyle.darkestBlueSignUp,
                                          // width: MediaQuery.of(context).size.width,
                                          height: 25
                                          // fit: BoxFit.cover,
                                          ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Account Details',
                                        style: TextStyles.textStyles_8.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Container(
                                  width: 91,
                                  height: 66,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(ImageStyle.stock,
                                          color: ColorStyle.darkestBlueSignUp,
                                          // width: MediaQuery.of(context).size.width,
                                          height: 25
                                          // fit: BoxFit.cover,
                                          ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Exchange',
                                        style: TextStyles.textStyles_8.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: ColorStyle.primaryWhite,
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment:
                              // MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ElevatedButtonCustom(
                                    text: 'Transactions',
                                    colorBG: Colors.transparent,
                                    textStyle: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1),
                                    onTap: () {
                                      controller.listType.value = 1;
                                      controller.listCount.value +=1;
                                      controller.listCount.value -=1;
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ElevatedButtonCustom(
                                    text: 'Statements',
                                    colorBG: Colors.transparent,
                                    textStyle: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1),
                                    onTap: () {
                                      controller.listType.value = 2;
                                      controller.listCount.value +=1;
                                      controller.listCount.value -=1;
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ElevatedButtonCustom(
                                    text: 'Notices',
                                    colorBG: Colors.transparent,
                                    textStyle: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 1),
                                    onTap: () {
                                      controller.listType.value = 3;
                                      controller.listCount.value +=1;
                                      controller.listCount.value -=1;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SearchBarCustom(),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Today',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        '17 April 2021',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: Colors.black26,
                                  ),
                                  ListView.builder(
                                      padding:
                                          EdgeInsets.only(top: 16, bottom: 16),
                                      shrinkWrap: true,
                                      itemCount: controller.listCount.value,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (context, index) {

                                        if (controller.listType.value == 1) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                            ),
                                            alignment: Alignment.center,
                                            height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.all(6),
                                            // color: Colors.red,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      ImageStyle.agp,
                                                      height: 42,
                                                      width: 42,
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Costa Coffee',
                                                          // controller.listApplyLeave[index],
                                                          style: TextStyles
                                                              .textStyles_12
                                                              .apply(
                                                                  color: ColorStyle
                                                                      .secondryBlack),
                                                        ),
                                                        Text(
                                                          'Food & Drink',
                                                          // controller.listApplyLeave[index],
                                                          style: TextStyles
                                                              .textStyles_8
                                                              .apply(
                                                                  color: ColorStyle
                                                                      .secondryBlack),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      padding: EdgeInsets.only(
                                                          left: 14, right: 14),
                                                      child: Text(
                                                        '- \$8.10',
                                                        style: TextStyles
                                                            .textStyles_16
                                                            .apply(
                                                                color: ColorStyle
                                                                    .secondryBlack),
                                                      ),
                                                      // width: 70,
                                                      // height: 40,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: 20,
                                                      color: Colors.black45,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.lightBlueAccent
                                                    .withOpacity(0.1)),
                                          );
                                        } else if (controller.listType.value ==
                                            2) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                                left: 12, right: 12),
                                            alignment: Alignment.center,
                                            // color: Colors.red,
                                            height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.all(6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      ImageStyle.statement,
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'November 2020',
                                                          // controller.listApplyLeave[index],
                                                          style: TextStyles
                                                              .textStyles_12
                                                              .apply(
                                                                  color: ColorStyle
                                                                      .secondryBlack),
                                                        ),
                                                        Text(
                                                          '08 November 2020',
                                                          // controller.listApplyLeave[index],
                                                          style: TextStyles
                                                              .textStyles_8
                                                              .apply(
                                                                  color: ColorStyle
                                                                      .secondryBlack),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: 20,
                                                  color: Colors.black45,
                                                )
                                              ],
                                            ),

                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.lightBlueAccent
                                                    .withOpacity(0.1)),
                                          );
                                        } else if (controller.listType.value ==
                                            3) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                bottom: 12,
                                                top: 12),
                                            alignment: Alignment.center,
                                            // color: Colors.red,
                                            // height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.all(6),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  ImageStyle.notice,
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: 16,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    // crossAxisAlignment:
                                                    //     CrossAxisAlignment.start,
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.center,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                              child: Text(
                                                            'Plus+ Current account (6435)',
                                                            style: TextStyles
                                                                .textStyles_12
                                                                .apply(
                                                                    color: ColorStyle
                                                                        .secondryBlack,
                                                                    fontWeightDelta:
                                                                        1),
                                                          )),
                                                          Text(
                                                            '01 MAR 2022',
                                                            style: TextStyles
                                                                .textStyles_12
                                                                .apply(
                                                                    color: ColorStyle
                                                                        .secondryBlack,
                                                                    fontWeightDelta:
                                                                        2),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Important changes in our fees and limits effective from 1st June 2022',
                                                        // controller.listApplyLeave[index],
                                                        style: TextStyles
                                                            .textStyles_8
                                                            .apply(
                                                                color: ColorStyle
                                                                    .secondryBlack),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.lightBlueAccent
                                                    .withOpacity(0.1)),
                                          );
                                        } else {
                                          return Container(
                                            color: Colors.red,
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          );
                                        }
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
