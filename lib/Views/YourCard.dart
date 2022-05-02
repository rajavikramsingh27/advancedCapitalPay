import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/cupertino.dart';

import '../Controllers/YourCardController.dart';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/InboxMessage.dart';
import '../Views/AppSettings.dart';
import '../Views/FindATMLocator//FindATMLocator.dart';
import '../Views/TravelNotice.dart';

class YourCard extends StatelessWidget {
  YourCard({Key? key}) : super(key: key);

  final controller = Get.put(YourCardController());

  SwiperController _controller = SwiperController();

  swiperView() {
    return Container(
      height: 250,
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
            child: Column(
              children: [
                Image.asset(
                  controller.arrCardsImage[index],
                  width: MediaQuery.of(context).size.width,
                  // height: 250,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Virtual Card',
                  style: TextStylesPoppins.textStyles_14.apply(
                    color: ColorStyle.primaryWhite.withOpacity(0.4),
                    fontWeightDelta: 1,
                  ),
                ),
              ],
            ),
          );
        },
        onIndexChanged: (index) {
          controller.indexPage.value = index;
        },
      ),
    );
  }

  switchButton(int index) {
    return FlutterSwitch(
        width: 50.0,
        height: 26.0,
        // valueFontSize: 25.0,
        toggleSize: 16.0,
        value: controller.arrButtonSwitchValue[index],
        // borderRadius: 30.0,
        // padding: 8.0,
        // showOnOff: true,
        onToggle: (value) {
          print(index);
          controller.arrButtonSwitchValue[index] = value;
          controller.arrCardSettingsTitle.add("");
          controller.arrCardSettingsTitle.removeLast();
        });
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
            leadingWidth: 0,
            nameUser: 'Your Cards',
            descriptionUser: 'Plus Personal Customer',
            nameStyle: TextStylesPoppins.textStyles_20.apply(fontWeightDelta: 2),
            descriptionStyle:
                TextStylesPoppins.textStyles_12.apply(fontWeightDelta: 0),
            trailingAction: [
              IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 26,
                ),
                onPressed: () {
                  Get.to(InboxMessage());
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
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: YourCardController(),
            initState: (state) {
              // controller.reset();
            },
            builder: (authController) {
              return Obx(
                () => SingleChildScrollView(
                    // padding: EffectStyle.padding(16, 16, 0, 0),
                    child: Column(
                  children: [
                    swiperView(),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorStyle.hex('#274174'),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageStyle.notice,
                                    color: ColorStyle.primaryWhite, height: 20
                                    // fit: BoxFit.cover,
                                    ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Reorder',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorStyle.hex('#274174'),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageStyle.rotateright,
                                    color: ColorStyle.primaryWhite, height: 20
                                    // fit: BoxFit.cover,
                                    ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Change PIN',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorStyle.hex('#274174'),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageStyle.unlock,
                                    color: ColorStyle.primaryWhite, height: 25
                                    // fit: BoxFit.cover,
                                    ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Lock Card',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 16,
                      ),
                      color: ColorStyle.primaryWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Settings',
                            style: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.arrCardSettingsTitle.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 6,
                              );
                            },
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorStyle.hex('#EDEDED'),
                                    borderRadius: EffectStyle.radiusCustom(6),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              controller
                                                  .arrCardSettingsIcons[index],
                                              height: 26,
                                              color: ColorStyle.secondryBlack,
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Expanded(
                                              child: Text(
                                                controller
                                                    .arrCardSettingsTitle[index],
                                                style: TextStylesPoppins.textStyles_14
                                                    .apply(
                                                  color: ColorStyle.secondryBlack,
                                                  fontWeightDelta: 1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (controller.arrButtonSwitchType[index])
                                        switchButton(index),
                                      if (!controller.arrButtonSwitchType[index])
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: ColorStyle.secondryBlack,
                                          size: 16,
                                        ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  if (index == 3) {
                                    Get.to(FindATMLocator());
                                  } else if (index == 4) {
                                    Get.to(TravelNotice());
                                  }
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              );
            },
          ),
        ),
      ],
    );
  }
}
