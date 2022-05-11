import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:get/get.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import '../../Controllers/Travel/TravelNoticeController.dart';
import 'TravelDestination.dart';
import '../../../../Components/ButtonChat.dart';
class TravelNotice extends StatelessWidget {
  TravelNotice({Key? key}) : super(key: key);

  final controller = Get.put(TravelNoticeController());

  SwiperController _controller = SwiperController();

  swiperView() {
    return Container(
      height: 250,
      child: Swiper(
        autoplay: false,
        loop: false,
        itemCount: controller.arrCardsImage.length,
        scrollDirection: Axis.horizontal,
        // pagination: SwiperPagination(
        //   margin: EdgeInsets.only(top: 100),
        //   builder: new DotSwiperPaginationBuilder(
        //     color: ColorStyle.grayColor,
        //     activeColor: ColorStyle.primaryWhite,
        //   ),
        // ),

        control: SwiperControl(
          padding: EdgeInsets.only(left: 16, right: 16),
          size: 26,
          color: Colors.white,
          disableColor: Colors.white,
          iconPrevious: Icons.arrow_back_ios_outlined,
          iconNext: Icons.arrow_forward_ios,
        ),
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Image.asset(
                ImageStyle.Group2201,
                width: MediaQuery.of(context).size.width,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                left: 16,
                right: 0,
                child: Text(
                  "Savannah's Wedding Day 25th November 2022",
                  // controller.listApplyLeave[index],
                  style: TextStylesPoppins
                      .textStyles_14
                      .apply(
                      color: ColorStyle
                          .primaryWhite,
                    fontWeightDelta: 2
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: ColorStyle.secondryBlack.withOpacity(0.7),
                  padding: EffectStyle.padding(16, 16, 6, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "20",
                            style: TextStylesPoppins
                                .textStyles_32
                                .apply(
                                color: ColorStyle
                                    .primaryWhite,
                                fontWeightDelta: 1
                            ),
                          ),
                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "November",
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                              Text(
                                "Departing",
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "15",
                            style: TextStylesPoppins
                                .textStyles_32
                                .apply(
                                color: ColorStyle
                                    .primaryWhite,
                                fontWeightDelta: 1
                            ),
                          ),
                          SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "December",
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                              Text(
                                "Arriving",
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ],
          );
        },
        onIndexChanged: (index) {

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleTitle(
          title: 'Travel Notice',
          backgroundColor: ColorStyle.darkestBlue,
          leadingButton: IconButton(
            icon: Image.asset(
              ImageStyle.back_circle,
              height: 30,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          trailingButton: [ButtonChat(),],
        ),
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child:  Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageStyle.Group2221,
                      // height: 30,
                      // width: 30,
                    ),
                    Text(
                      'Why Notify Us Of Your Travel?',
                      // controller.listApplyLeave[index],
                      style: TextStylesPoppins
                          .textStyles_14
                          .apply(
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'So we can increase security around your account.',
                      // controller.listApplyLeave[index],
                      style: TextStylesPoppins
                          .textStyles_12
                          .apply(
                          color: ColorStyle
                              .blueSKY),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Letting us know your travel plans allows you '
                          'to use your cards and accounts with confidence'
                          ' when overseas.',
                      // controller.listApplyLeave[index],
                      style: TextStylesPoppins
                          .textStyles_12
                          .apply(
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16,right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImageStyle.creditcard,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Avoids any delays for your account',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                ImageStyle.creditcard,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Continue to use cards as usual while overseas',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                ImageStyle.creditcard,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child:   Text(
                                  'Increased security around your account whilst you\'re away',
                                  // controller.listApplyLeave[index],
                                  style: TextStylesPoppins
                                      .textStyles_10
                                      .apply(
                                      color: ColorStyle
                                          .secondryBlack),
                                ),
                                width: 250,
                              ),

                            ],
                          ),
                          SizedBox(
                            height:10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                ImageStyle.creditcard,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Text(
                                  'Quickly add, modify or delete any of your travel notices'
                                      'to keep us informed! We appreciate it to keep you and'
                                      'safe as possible!',
                                  // controller.listApplyLeave[index],
                                  style: TextStylesPoppins
                                      .textStyles_10
                                      .apply(
                                      color: ColorStyle
                                          .secondryBlack),
                                ),
                                width: 250,
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButtonCustom(
                        text: 'Add a Trip',
                        colorBG: ColorStyle.darkestBlueSignUp,
                        radiusBorder: 40,
                        width: 140,
                        textStyle: TextStylesPoppins.textStyles_14.apply(
                            color: ColorStyle
                                .primaryWhite,
                        fontWeightDelta: 1),
                        onTap: () {
                          Get.to(TravelDestination());
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: EffectStyle.padding(20, 20, 0, 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButtonCustom(
                              text: 'Upcoming Trips',
                              colorBG: ColorStyle.hex('#0E4AF2'),
                              textStyle: TextStylesPoppins
                                  .textStyles_14
                                  .apply(
                                  color: ColorStyle
                                      .primaryWhite),
                              onTap: () {

                              },
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: ElevatedButtonCustom(
                              text: 'Past Trips',
                              colorBG: ColorStyle.hex('#0535B1').withOpacity(0.6),
                              textStyle: TextStylesPoppins
                                  .textStyles_14
                                  .apply(
                                  color: ColorStyle
                                      .primaryWhite),
                              onTap: () {

                              },
                            ),

                          ),
                        ],
                      ),
                    ),
                    swiperView(),
                  ],
                ),
              ),

            ],
          ),
        )
    );
    // height: 590
  }
}
