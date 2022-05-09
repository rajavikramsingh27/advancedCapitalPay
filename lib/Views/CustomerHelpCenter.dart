import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/InfoIconDescription.dart';
import '../Components/SearchBarCustom.dart';
import '../Controllers/CustomerHelpCenterController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class CustomerHelpCenter extends StatelessWidget {
  CustomerHelpCenter({Key? key}) : super(key: key);

  final controller = Get.put(CustomerHelpCenterController());




  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'Customer Help Center',
                style: TextStylesPoppins.textStyles_20
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
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
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {},
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: 33),
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                        child:  Column(
                          children: [
                            SizedBox(
                              height: 17,
                            ),
                            SearchCustomBarHelpCenter(),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 36,
                              // padding: EffectStyle.padding(16, 16, 0, 0),
                              child: ButtonContinueCancel(
                                  radiusBorder: 5,
                                  textFirst:'Live Support',
                                  colorBGFirst: ColorStyle.hex('#016ECF'),
                                  colorBorderFirst:Colors.transparent,
                                  textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle.primaryWhite,
                                  ),
                                  onTapFirst: () {},
                                  textSecond:'Message Us',
                                  colorBGSecond: ColorStyle.hex('#016ECF'),
                                  colorBorderSecond: Colors.transparent,
                                  textStyleSecond: TextStylesPoppins.textStyles_14.apply(
                                      fontWeightDelta: 1,
                                      color: ColorStyle.primaryWhite
                                  ),
                                  onTapSecond: () {}
                                // onTapSecond: onTapContinue,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 19,right: 19),
                        height: 235,
                        color: ColorStyle.hex('#E1F3FF'),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Frequently Asked Questions',
                              style: TextStylesPoppins.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 2),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              'Can\'t find the answers you\'re looking for? Simply click'
                                  ' one of the options above to speak with one of our '
                                  'customer support representatives.',
                              textAlign: TextAlign.center,
                              style: TextStylesPoppins.textStyles_12.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1
                              ),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Container(
                              child:Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            ImageStyle.Group2185,
                                            height: 42,
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Text(
                                            'Update My Details',
                                            textAlign: TextAlign.center,
                                            // maxLines: 2,
                                            style: TextStylesPoppins.textStyles_10.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            ImageStyle.Group22222,
                                            height: 42,
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Text(
                                            'Report Unusual Activity',
                                            textAlign: TextAlign.center,
                                            // maxLines: 3,
                                            style: TextStylesPoppins.textStyles_10.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            ImageStyle.Group2223,
                                            height: 42,
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Text(
                                            'Change     '
                                                '        Pin',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStylesPoppins.textStyles_10.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            ImageStyle.Group2224,
                                            height: 42,
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                          Text(
                                            'Update My Address',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStylesPoppins.textStyles_10.apply(
                                                color: ColorStyle.secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                               ImageStyle.lockk,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Security and Emergencies',
                                  // controller.helpCenter[index],
                                  textAlign: TextAlign.center,
                                  // maxLines: 2,
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                // itemCount: 4,
                                itemCount:controller.helpCenterOne.length,
                                // padding: EdgeInsets.only(left: 10, right: 10, bottom: 16),
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(height: 10);
                                },
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 14),
                                    child:  Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              // 'Security and Emergencies',
                                              controller.helpCenterOne[index],
                                              textAlign: TextAlign.center,
                                              // maxLines: 2,
                                              style: TextStylesPoppins.textStyles_12.apply(
                                                  color: ColorStyle.hex('#4182D7'),
                                                  fontWeightDelta: 1),
                                            ),
                                            // SizedBox(
                                            //   height: 4,
                                            // ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                              color: ColorStyle.grey,
                                            )

                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          height: 1,
                                          color: ColorStyle.grey,
                                        ),




                                      ],
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageStyle.locko,
                                  height: 32,
                                ),

                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Directly take me to',
                                  // controller.helpCenter[index],
                                  textAlign: TextAlign.center,
                                  // maxLines: 2,
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                // itemCount: 4,
                                itemCount:controller.helpCenterTwo.length,
                                // padding: EdgeInsets.only(left: 10, right: 10, bottom: 16),
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(height: 10);
                                },
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 14),
                                    child:  Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              // 'Security and Emergencies',
                                              controller.helpCenterTwo[index],
                                              textAlign: TextAlign.center,
                                              // maxLines: 2,
                                              style: TextStylesPoppins.textStyles_12.apply(
                                                  color: ColorStyle.hex('#4182D7'),
                                                  fontWeightDelta: 1),
                                            ),
                                            // SizedBox(
                                            //   height: 4,
                                            // ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                              color: ColorStyle.grey,
                                            )

                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          height: 1,
                                          color: ColorStyle.grey,
                                        ),




                                      ],
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageStyle.lockt,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Policies and Procedures',
                                  // controller.helpCenter[index],
                                  textAlign: TextAlign.center,
                                  // maxLines: 2,
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                // itemCount: 4,
                                itemCount:controller.helpCenterThree.length,
                                // padding: EdgeInsets.only(left: 10, right: 10, bottom: 16),
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(height: 10);
                                },
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 14),
                                    child:  Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              // 'Security and Emergencies',
                                              controller.helpCenterThree[index],
                                              textAlign: TextAlign.center,
                                              // maxLines: 2,
                                              style: TextStylesPoppins.textStyles_12.apply(
                                                  color: ColorStyle.hex('#4182D7'),
                                                  fontWeightDelta: 1),
                                            ),
                                            // SizedBox(
                                            //   height: 4,
                                            // ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                              color: ColorStyle.grey,
                                            )

                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          height: 1,
                                          color: ColorStyle.grey,
                                        ),




                                      ],
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageStyle.lockf,
                                  height: 32,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Security and Fraud',
                                  // controller.helpCenter[index],
                                  textAlign: TextAlign.center,
                                  // maxLines: 2,
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            ListView.separated(
                                shrinkWrap: true,
                                // itemCount: 4,
                                itemCount:controller.helpCenterFour.length,
                                // padding: EdgeInsets.only(left: 10, right: 10, bottom: 16),
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(height: 10);
                                },
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.only(top: 14),
                                    child:  Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              // 'Security and Emergencies',
                                              controller.helpCenterFour[index],
                                              textAlign: TextAlign.center,
                                              // maxLines: 2,
                                              style: TextStylesPoppins.textStyles_12.apply(
                                                  color: ColorStyle.hex('#4182D7'),
                                                  fontWeightDelta: 1),
                                            ),
                                            // SizedBox(
                                            //   height: 4,
                                            // ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 16,
                                              color: ColorStyle.grey,
                                            )

                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Container(
                                          height: 1,
                                          color: ColorStyle.grey,
                                        ),




                                      ],
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                      Container(
                        // padding: EffectStyle.padding(16, 16, 0, 0),
                        child: InfoIconDescription(
                          description:
                          'Still experiencing trouble getting in contact with us? You can directly e-mail customersupport@AdvanceCapitalPay.com. Our customer support representatives are available 24/7 across all channels.',
                          descriptionStyle: TextStylesPoppins.textStyles_12
                              .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16,right: 16),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 10,right: 10),
                        height: 100,
                        color: ColorStyle.hex('#E1F3FF'),
                        child: Text(
                          'All channels are open 24 hours a day. 7 days a week. '
                              '     '
                              'Contact channels may be monitoring or recorded. If you\'re unsure which option to select you can speak directly with one of our customer support representatives through the live chat button located in the top right of this page.',
                          textAlign: TextAlign.start,
                          style: TextStylesPoppins.textStyles_10.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1
                          ),
                        ),
                      ),

                      // ListView.separated(
                      //     // padding: EdgeInsets.only(
                      //     //     left: 16, right: 16, top: 16, bottom: 16),
                      //     shrinkWrap: true,
                      //     physics: NeverScrollableScrollPhysics(),
                      //     itemCount:controller.helpCenter.length,
                      //     itemBuilder:
                      //         (BuildContext context, int index) {
                      //       return
                      //     }),



                    ],
                  )
              ),
            )
        )
      ],
    );
  }
}
