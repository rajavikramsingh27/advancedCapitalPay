import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Controllers/MainDashboardController.dart';
import 'package:get/utils.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import '../InboxMessage.dart';
import '../Settings/AppSettings.dart';
import '../../Components/SearchBarCustom.dart';
import '../TransactionDetails.dart';
import '../SavingGoal.dart';
import '../AccountDetails.dart';
import '../Exchange.dart';
import '../BeneficiaryInternational.dart';
import '../../Components/ChatWithUs.dart';
import '../../../../Components/ButtonChat.dart';

class MainDashboard extends StatelessWidget {
  MainDashboard({Key? key}) : super(key: key);

  final controller = Get.put(MainDashboardController());

  SwiperController _controller = SwiperController();

  swiperView() {
    return Container(
      height: 250,
      child: Swiper(
        viewportFraction: 0.85,
        autoplay: false,
        loop: false,
        itemCount: controller.arrCardsImage.length,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(top: 120),
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
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Image.asset(
                controller.arrCardsImage[index],
                // fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width-200,
                height: 240,
              ),
            ),
            onTap: () {
              Get.to(SavingGoal());
            },
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
            timeLastLogin: 'Last Successful login: 02 Feb 2021. 13: 53: 41',
            nameStyle: TextStylesPoppins.textStyles_14
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
            descriptionStyle: TextStylesPoppins.textStyles_12
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
            trailingAction: [
              ButtonChat(),
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
          backgroundColor: Colors.transparent,
          body: GetBuilder<MainDashboardController>(
            init: MainDashboardController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(
                    () => SingleChildScrollView(
                  child: Column(
                    children: [
                      swiperView(),
                      Container(
                        padding: EffectStyle.padding(16, 16, 0, 0),
                        child: Column(
                          children: [
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
                                          style: TextStylesPoppins.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        Text(
                                          '\$2,713.23',
                                          style: TextStylesPoppins.textStyles_12.apply(
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
                                          style: TextStylesPoppins.textStyles_16.apply(
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
                                          style: TextStylesPoppins.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        Text(
                                          '\$2,713.23',
                                          style: TextStylesPoppins.textStyles_12.apply(
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
                                Expanded(
                                  child: InkWell(
                                    child: Container(
                                      height: 66,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(ImageStyle.transfer3,
                                              color: ColorStyle.hex('#134EAE'),
                                              // width: MediaQuery.of(context).size.width,
                                              height: 25
                                            // fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Transfer',
                                            style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.hex('#134EAE'),
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
                                    onTap: () {
                                      Get.to(BeneficiaryInternational());
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 26,
                                ),
                                Expanded(
                                  child: InkWell(
                                    child: Container(
                                      height: 66,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Image.asset(ImageStyle.coin,
                                            color: ColorStyle.hex('#134EAE'),
                                            height: 30,
                                          ),
                                          SizedBox(
                                            height: 2.5,
                                          ),
                                          Text(
                                            'Account Details',
                                            style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.hex('#134EAE'),
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
                                    onTap: () {
                                      Get.to(AccountDetails());
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 26,
                                ),
                                Expanded(
                                  child: InkWell(
                                    child: Container(
                                      height: 66,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(ImageStyle.stock,
                                              color: ColorStyle.hex('#134EAE'),
                                              height: 25
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Exchange',
                                            style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.hex('#134EAE'),
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
                                    onTap: () {
                                      Get.to(Exchange());
                                    },
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
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ElevatedButtonCustom(
                                      text: 'Transactions',
                                      colorBG: Colors.transparent,
                                      textStyle: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.hex('#13409F'),
                                        fontWeightDelta: 2,
                                      ),
                                      onTap: () {
                                        controller.listType.value = 1;
                                        controller.listCount.value += 1;
                                        controller.listCount.value -= 1;
                                      },
                                    ),
                                    decoration: (controller.listType.value == 1)
                                        ? BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(ImageStyle
                                                .transactionShadow),
                                            fit: BoxFit.fill))
                                        : BoxDecoration(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: ElevatedButtonCustom(
                                      text: 'Statements',
                                      colorBG: Colors.transparent,
                                      textStyle: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.hex('#13409F'),
                                        fontWeightDelta: 2,),
                                      onTap: () {
                                        controller.listType.value = 2;
                                        controller.listCount.value += 1;
                                        controller.listCount.value -= 1;
                                      },
                                    ),
                                    decoration: (controller.listType.value == 2)
                                        ? BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(ImageStyle
                                                .transactionShadow),
                                            fit: BoxFit.fill))
                                        : BoxDecoration(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: ElevatedButtonCustom(
                                      text: 'Notices',
                                      colorBG: Colors.transparent,
                                      textStyle: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.hex('#13409F'),
                                        fontWeightDelta: 2,),
                                      onTap: () {
                                        controller.listType.value = 3;
                                        controller.listCount.value += 1;
                                        controller.listCount.value -= 1;
                                      },
                                    ),
                                    decoration: (controller.listType.value == 3)
                                        ? BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(ImageStyle
                                                .transactionShadow),
                                            fit: BoxFit.fill))
                                        : BoxDecoration(),
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
                              height: 10,
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
                                        style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 3,
                                        ),
                                      ),
                                      Text(
                                        '17 April 2021',
                                        style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 3,
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
                                  ListView.separated(
                                      padding:
                                      EdgeInsets.only(top: 16, bottom: 16),
                                      shrinkWrap: true,
                                      itemCount: controller.listCount.value,
                                      physics: NeverScrollableScrollPhysics(),
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 6,
                                        );
                                      },
                                      itemBuilder: (context, index) {
                                        if (controller.listType.value == 1) {
                                          return InkWell(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                              ),
                                              alignment: Alignment.center,
                                              height: 60,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
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
                                                            style: TextStylesPoppins
                                                                .textStyles_12
                                                                .apply(
                                                                color: ColorStyle
                                                                    .secondryBlack,
                                                                fontWeightDelta:
                                                                1),
                                                          ),
                                                          Text(
                                                            'Food & Drink',
                                                            // controller.listApplyLeave[index],
                                                            style: TextStylesPoppins
                                                                .textStyles_8
                                                                .apply(
                                                                color: ColorStyle
                                                                    .secondryBlack,
                                                                fontWeightDelta:
                                                                1),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '- \$8.10',
                                                        style: TextStylesPoppins
                                                            .textStyles_16
                                                            .apply(
                                                            color: ColorStyle
                                                                .secondryBlack,
                                                            fontWeightDelta:
                                                            2),
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
                                                  BorderRadius.circular(6),
                                                  color: ColorStyle.hex(
                                                      '#F5F4F4')),
                                            ),
                                            onTap: () {
                                              Get.to(TransactionDetails());
                                            },
                                          );
                                        }
                                        else if (controller.listType.value == 2) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                                left: 12, right: 12),
                                            alignment: Alignment.center,
                                            // color: Colors.red,
                                            height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                                          style: TextStylesPoppins
                                                              .textStyles_12
                                                              .apply(
                                                              color: ColorStyle
                                                                  .secondryBlack),
                                                        ),
                                                        Text(
                                                          '08 November 2020',
                                                          // controller.listApplyLeave[index],
                                                          style: TextStylesPoppins
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
                                                color:
                                                ColorStyle.hex('#F5F4F4')),
                                          );
                                        }
                                        else if (controller.listType.value == 3) {
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
                                                                style: TextStylesPoppins
                                                                    .textStyles_12
                                                                    .apply(
                                                                    color: ColorStyle
                                                                        .secondryBlack,
                                                                    fontWeightDelta:
                                                                    1),
                                                              )),
                                                          Text(
                                                            '01 MAR 2022',
                                                            style: TextStylesPoppins
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
                                                        style: TextStylesPoppins
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
                                                color:
                                                ColorStyle.hex('#F5F4F4')),
                                          );
                                        }
                                        else {
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
