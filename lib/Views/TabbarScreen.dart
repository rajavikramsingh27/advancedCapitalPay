import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Controllers/TabbarScreenController.dart';
import 'Card/CardSetting.dart';
import 'Dashboard/MainDashboard.dart';
import 'package:advanced_capital_pay/Views/MoreScreen.dart';
// import '../Views/CardSetting.dart';
// import '../Views/CustomerHelpCenter.dart';
import 'CryptoScreens/CryptoDashboard.dart';
import 'Help/CustomerHelpCenter.dart';


class TabbarScreen extends StatelessWidget {
  final controller = Get.put(TabbarScreenController());

  double iconSize = 26;

  textLabel(String text, int index) {
    return Text(
      text,
      style: TextStylesPoppins.textStyles_10.apply(
        color: (controller.selectedIndex.value == index)
            ? Colors.blueAccent
            : ColorStyle.primaryWhite,
        fontWeightDelta: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: GetBuilder<TabbarScreenController>(
          init: TabbarScreenController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(() => Scaffold(
                  backgroundColor: Colors.white,
                  floatingActionButton: InkWell(
                    child: Image.asset(
                      ImageStyle.middle_Image,
                      height: 64,
                    ),
                    onTap: () {
                      controller.selectedIndex.value = 2;
                    },
                  ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  body: Stack(
                    children: [
                      if (controller.selectedIndex.value == 0)
                        Positioned(
                            top: 0,
                            bottom: 65,
                            left: 0,
                            right: 0,
                child: CryptoDashboard()),
                      if (controller.selectedIndex.value == 2)
                        Positioned(
                            top: 0,
                            bottom: 65,
                            left: 0,
                            right: 0,
                            child: MainDashboard()),
                      if (controller.selectedIndex.value == 3)
                        Positioned(
                            top: 0,
                            bottom: 65,
                            left: 0,
                            right: 0,
                            child: CardSetting()),
                      if (controller.selectedIndex.value == 4)
                        Positioned(
                            top: 0,
                            bottom: 65,
                            left: 0,
                            right: 0,
                            child: CustomerHelpCenter()),
                      Positioned(
                          bottom: 0,
                          child: SafeArea(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              color: ColorStyle.hex('#010730'),
                              padding: EffectStyle.padding(16, 16, 10, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          ImageStyle.cryptocurrency_Tabbar,
                                          height: iconSize,
                                          color:
                                              (controller.selectedIndex.value ==
                                                      0)
                                                  ? Colors.blueAccent
                                                  : ColorStyle.primaryWhite,
                                        ),
                                        textLabel('Crypto', 0)
                                      ],
                                    ),
                                    onTap: () {
                                      controller.selectedIndex.value = 0;
                                    },
                                  ),
                                  InkWell(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          ImageStyle.menu_dots_Tabbar,
                                          height: iconSize,
                                          color:
                                              (controller.selectedIndex.value ==
                                                      1)
                                                  ? Colors.blueAccent
                                                  : ColorStyle.primaryWhite,
                                        ),
                                        textLabel('More', 1)
                                      ],
                                    ),
                                    onTap: () {
                                      MoreScreen.moreScreen();
                                    },
                                  ),
                                  Container(),
                                  InkWell(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          ImageStyle.credit_card_Tabbar,
                                          height: iconSize,
                                          color:
                                              (controller.selectedIndex.value ==
                                                      3)
                                                  ? Colors.blueAccent
                                                  : ColorStyle.primaryWhite,
                                        ),
                                        textLabel('Cards', 3)
                                      ],
                                    ),
                                    onTap: () {
                                      controller.selectedIndex.value = 3;
                                    },
                                  ),
                                  InkWell(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          ImageStyle.interrogation_Tabbar,
                                          height: iconSize,
                                          color:
                                              (controller.selectedIndex.value ==
                                                      4)
                                                  ? Colors.blueAccent
                                                  : ColorStyle.primaryWhite,
                                        ),
                                        textLabel('Help', 4)
                                      ],
                                    ),
                                    onTap: () {
                                      controller.selectedIndex.value = 4;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )),
                      // Positioned(
                      //     bottom: 20,
                      //     left: MediaQuery.of(context).size.width / 2 - 32,
                      //     child: Material(
                      //       color: Colors.transparent,
                      //       child: Center(
                      //         child: InkWell(
                      //           child: Image.asset(
                      //             ImageStyle.middle_Image,
                      //             height: 64,
                      //           ),
                      //           onTap: () {
                      //             controller.selectedIndex.value = 2;
                      //           },
                      //         ),
                      //       ),
                      //     )),
                    ],
                  ),
                ));
          },
        ));
  }
}
