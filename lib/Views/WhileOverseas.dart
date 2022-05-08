import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Controllers/TravelDetailsController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/ButtonCustom.dart';
import '../Components/SwitchButtonCustom.dart';
import '../Components/PopUp.dart';
import '../../../Components/ButtonChat.dart';

class WhileOverseas extends StatelessWidget {
  WhileOverseas({Key? key}) : super(key: key);

  final controller = Get.put(TravelDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleTitle(
          backgroundColor: ColorStyle.darkestBlue,
          title: 'While Overseas',
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
            ButtonChat(),
          ],
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body: GetBuilder(
          init: TravelDetailsController(),
          initState: (state) {},
          builder: (authController) {
            return Obx(() => SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            ImageStyle.Group2201,
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color:
                                    ColorStyle.secondryBlack.withOpacity(0.7),
                                padding: EffectStyle.padding(16, 16, 6, 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "20",
                                          style: TextStylesPoppins.textStyles_32
                                              .apply(
                                                  color:
                                                      ColorStyle.primaryWhite,
                                                  fontWeightDelta: 1),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "November",
                                              // controller.listApplyLeave[index],
                                              style: TextStylesPoppins
                                                  .textStyles_10
                                                  .apply(
                                                      color: ColorStyle
                                                          .primaryWhite,
                                                      fontWeightDelta: 1),
                                            ),
                                            Text(
                                              "Departing",
                                              // controller.listApplyLeave[index],
                                              style: TextStylesPoppins
                                                  .textStyles_10
                                                  .apply(
                                                      color: ColorStyle
                                                          .primaryWhite,
                                                      fontWeightDelta: 1),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "15",
                                          style: TextStylesPoppins.textStyles_32
                                              .apply(
                                                  color:
                                                      ColorStyle.primaryWhite,
                                                  fontWeightDelta: 1),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "December",
                                              // controller.listApplyLeave[index],
                                              style: TextStylesPoppins
                                                  .textStyles_10
                                                  .apply(
                                                      color: ColorStyle
                                                          .primaryWhite,
                                                      fontWeightDelta: 1),
                                            ),
                                            Text(
                                              "Arriving",
                                              // controller.listApplyLeave[index],
                                              style: TextStylesPoppins
                                                  .textStyles_10
                                                  .apply(
                                                      color: ColorStyle
                                                          .primaryWhite,
                                                      fontWeightDelta: 1),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Seychelles',
                                  // controller.listApplyLeave[index],
                                  style: TextStylesPoppins.textStyles_16.apply(
                                      fontWeightDelta: 2,
                                      color: ColorStyle.secondryBlack),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add Destination',
                                        // controller.listApplyLeave[index],
                                        style: TextStylesPoppins.textStyles_12
                                            .apply(
                                                fontWeightDelta: 1,
                                                color:
                                                    ColorStyle.secondryBlack),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Image.asset(
                                        ImageStyle.adddestination,
                                        width: 26,
                                        height: 26,
                                        // fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Travel Notes',
                                  // controller.listApplyLeave[index],
                                  style: TextStylesPoppins.textStyles_16.apply(
                                      fontWeightDelta: 2,
                                      color: ColorStyle.secondryBlack),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Text(
                                        'Edit',
                                        // controller.listApplyLeave[index],
                                        style: TextStylesPoppins.textStyles_12
                                            .apply(
                                                fontWeightDelta: 1,
                                                color:
                                                    ColorStyle.secondryBlack),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Image.asset(
                                        ImageStyle.Edit,
                                        width: 20,
                                        height: 20,
                                        color: ColorStyle.secondryBlack,
                                        // fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Savannah\'s Wedding in Seychelles ',
                              style: TextStylesPoppins.textStyles_14.apply(
                                  fontWeightDelta: 0,
                                  color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Reminder to contact Savannah\'s mum and'
                              ' thank her for sorting out the flight details.',
                              // controller.listApplyLeave[index],
                              style: TextStylesPoppins.textStyles_14.apply(
                                  fontWeightDelta: 0,
                                  color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Your Private Travel Notes',
                              // controller.listApplyLeave[index],
                              style: TextStylesPoppins.textStyles_16.apply(
                                  fontWeightDelta: 2,
                                  color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                  left: 16, right: 16, top: 16, bottom: 16),
                              child: Text(
                                "Savannah's Wedding in Seychelles"
                                " Reminder to contact Savannah's mum and "
                                "thank her for sorting out the flight details.",
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins.textStyles_12.apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle.secondryBlack),
                              ),
                              decoration: BoxDecoration(
                                // color: ColorStyle.blueLight,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: ColorStyle.secondryBlack),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Overseas I Plan To',
                              // controller.listApplyLeave[index],
                              style: TextStylesPoppins.textStyles_14.apply(
                                  fontWeightDelta: 2,
                                  color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.searchsymbol,
                                        width: 24,
                                        height: 24,
                                        // fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Use ATMs Frequently',
                                        style: TextStylesPoppins.textStyles_12
                                            .apply(
                                                fontWeightDelta: 1,
                                                color:
                                                    ColorStyle.secondryBlack),
                                      ),
                                    ],
                                  ),
                                ),
                                SwitchButtonCustom.switchButton(
                                    controller.isUseATMFrequenlty.value,
                                    (value) {
                                  controller.isUseATMFrequenlty.value = value;
                                }),
                              ],
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.coins,
                                        width: 24,
                                        height: 24,
                                        // fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Make Large Purchases',
                                        // controller.listApplyLeave[index],
                                        style: TextStylesPoppins.textStyles_12
                                            .apply(
                                                fontWeightDelta: 1,
                                                color:
                                                    ColorStyle.secondryBlack),
                                      ),
                                    ],
                                  ),
                                ),
                                SwitchButtonCustom.switchButton(
                                    controller.isMakeLargePurchases.value,
                                    (value) {
                                  controller.isMakeLargePurchases.value = value;
                                }),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'If you\'ve got an idea of how you\'ll '
                              'be using your cards, let us know, it\'ll help us keep '
                              'an eye out for suspicious activity.',
                              style: TextStylesPoppins.textStyles_12.apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: ElevatedButtonCustom(
                                  text: 'Delete',
                                  textStyle: TextStylesPoppins.textStyles_14
                                      .apply(color: ColorStyle.blueSKY),
                                  colorBG: ColorStyle.primaryWhite,
                                  colorBorder: ColorStyle.blueSKY,
                                  radiusBorder: 40,
                                  onTap: () {},
                                )),
                                SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                    child: ElevatedButtonCustom(
                                  text: 'Submit',
                                  textStyle: TextStylesPoppins.textStyles_14
                                      .apply(color: ColorStyle.primaryWhite),
                                  colorBG: ColorStyle.darkestBlueSignUp,
                                  colorBorder: ColorStyle.darkestBlueSignUp,
                                  radiusBorder: 40,
                                  onTap: () {
                                    Navigator.of(context)
                                      ..pop()
                                      ..pop()
                                      ..pop()
                                      ..pop();
                                  },
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        width: double.infinity,
                      ),
                    ],
                  ),
                ));
          },
        ));
  }
}
