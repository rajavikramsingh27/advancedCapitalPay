import 'package:advanced_capital_pay/Views/MyMessages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/MessagePageController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/SearchBarCustom.dart';
import '../Components/ListViewWithSections.dart';
import '../../../Components/ButtonChat.dart';
class InboxMessage extends StatelessWidget {
  const InboxMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MessagePageController());

    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.back_circle,
                height: 30,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: MessagePageController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(
                () => SingleChildScrollView(
                  // padding: EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarStyleLeadingTitleTrailing(
                        leadingImage: ImageStyle.ellipse2,
                        nameUser: 'HARRISON SMITH',
                        descriptionUser: 'Your Personal Settings',
                        trailingAction: [
                          ButtonChat(),
                          IconButton(
                            icon: Image.asset(
                              ImageStyle.user_logout,
                              height: 26,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to Your Inbox',
                              style: TextStylesPoppins.textStyles_20.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Online and paper preferences: ',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 0),
                                ),
                                Text(
                                  'Paperless',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: ColorStyle.primaryWhite,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            Container(
                              height: 40,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButtonCustom(
                                      text: 'Inbox (51)',
                                      radiusBorder: 0,
                                      colorBG: controller.isInbox.value
                                          ? ColorStyle.darkestBlueSignUp
                                          : Colors.transparent,
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: controller.isInbox.value
                                              ? ColorStyle.primaryWhite
                                              : ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1),
                                      onTap: () {
                                        controller.listType.value = 1;
                                        controller.isInbox.value = true;
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: ElevatedButtonCustom(
                                      text: 'Archive',
                                      radiusBorder: 0,
                                      colorBG: !controller.isInbox.value
                                          ? ColorStyle.darkestBlueSignUp
                                          : Colors.transparent,
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                          color: !controller.isInbox.value
                                              ? ColorStyle.primaryWhite
                                              : ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 1),
                                      onTap: () {
                                        controller.listType.value = 2;
                                        controller.isInbox.value = false;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                        height: 22,
                                        width: 22,
                                        alignment: Alignment.centerLeft,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              elevation: 0,
                                              padding: EdgeInsets.all(0)),
                                          child: Icon(
                                            controller.agree.value
                                                ? Icons.check_box
                                                : Icons
                                                    .check_box_outline_blank_outlined,
                                            size: 26,
                                            color: ColorStyle.darkestBlueSignUp,
                                          ),
                                          onPressed: () {
                                            controller.agree.value =
                                                !controller.agree.value;

                                            // setState(() {});
                                          },
                                        )),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Select all',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.darkestBlueSignUp,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      child: Text(
                                        'Unread',
                                        style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    InkWell(
                                      child: Text(
                                        ' |  Read  | ',
                                        style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    InkWell(
                                      child: Text(
                                        'Archive',
                                        style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                  ],
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
                            SizedBox(
                              height: 10,
                            ),
                            SearchBarCustom(),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            ListViewWithSections(
                              title: 'Important Messages - March 2022',
                              arrList: ['',],
                              onTap: (index) {
                                Get.to(MyMessages());
                              },
                              widget: (controller.listType.value == 1) ? Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.Group1925,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ) : Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.notice,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListViewWithSections(
                              title: 'Important Messages - March 2022',
                              arrList: ['','',],
                              onTap: (index) {
                                Get.to(MyMessages());
                              },
                              widget: (controller.listType.value == 1) ? Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.Group1925,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ) : Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.notice,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListViewWithSections(
                              title: 'Important Messages - March 2022',
                              arrList: ['','','',],
                              onTap: (index) {
                                Get.to(MyMessages());
                              },
                              widget: (controller.listType.value == 1) ? Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.Group1925,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ) : Container(
                                padding: EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 12,
                                  bottom: 12,
                                ),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorStyle.hex('#F5F4F4')),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      ImageStyle.notice,
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Plus+ Current account (6435)',
                                                  // controller.listApplyLeave[index],
                                                  style: TextStylesPoppins.textStyles_12.apply(
                                                      color: ColorStyle.secondryBlack,
                                                      fontWeightDelta: 2
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '01 MAR 2022',
                                                // controller.listApplyLeave[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Important changes in our fees and limits effective from 1st June 2022',
                                            // controller.listApplyLeave[index],
                                            style: TextStylesPoppins.textStyles_8.apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
