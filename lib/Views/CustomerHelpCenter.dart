import 'package:advanced_capital_pay/Components/ChatWithUs.dart';
import 'package:advanced_capital_pay/Views/AdvanceCapitalPayHelpCenter.dart';
import 'package:advanced_capital_pay/Views/InboxMessage.dart';
import 'package:advanced_capital_pay/Views/MyMessages.dart';
import 'package:advanced_capital_pay/Views/WebViewCustom.dart';
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

titleListView(String icon, String title, List<String> listContent, Function(int) onTap) {
  return Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              icon,
              height: 30,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStylesPoppins.textStyles_14.apply(
                  color: ColorStyle.secondryBlack,
                  fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        ListView.separated(
            shrinkWrap: true,
            itemCount: listContent.length,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder:
                (BuildContext context, int index) {
              return SizedBox(height: 0);
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(top: 14),
                child: InkWell(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(
                            listContent[index],
                            textAlign: TextAlign.left,
                            style: TextStylesPoppins
                                .textStyles_12
                                .apply(
                                color: ColorStyle.hex(
                                    '#4182D7'),
                                fontWeightDelta: 1),
                          )),
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
                        height: 0.4,
                        color: ColorStyle.grey,
                      ),
                    ],
                  ),
                  onTap: () {
                    onTap(index);
                  },
                ),
              );
            }),
      ],
    ),
  );
}

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
              // leadingButton: IconButton(
              //   icon: Image.asset(
              //     ImageStyle.back_circle,
              //     height: 30,
              //   ),
              //   onPressed: () {
              //     Get.back();
              //   },
              // ),
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
                              height: 16,
                            ),
                            SearchBarCustom(
                              padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 0),
                              margin: EdgeInsets.all(0),
                              hint: 'What can we help you with?',
                              height: 40,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            ButtonContinueCancel(
                                height: 40,
                                radiusBorder: 5,
                                textFirst:'Live Support',
                                colorBGFirst: ColorStyle.hex('#016ECF'),
                                colorBorderFirst:Colors.transparent,
                                textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                                  // fontWeightDelta: 1,
                                  color: ColorStyle.primaryWhite,
                                ),
                                onTapFirst: () {
                                  ChatWithUs.chatWithUs();
                                },
                                textSecond:'Message Us',
                                colorBGSecond: ColorStyle.hex('#016ECF'),
                                colorBorderSecond: Colors.transparent,
                                textStyleSecond: TextStylesPoppins.textStyles_14.apply(
                                    // fontWeightDelta: 1,
                                    color: ColorStyle.primaryWhite
                                ),
                                onTapSecond: () {
                                  Get.to(AdvanceCapitalPayHelpCenter());
                                }
                            ),
                            SizedBox(
                              // height: 16,
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
                                  fontWeightDelta: 2
                              ),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 26, right: 26),
                              child: Text(
                                'Can\'t find the answers you\'re looking for? Simply click'
                                    ' one of the options above to speak with one of our '
                                    'customer support representatives.',
                                textAlign: TextAlign.center,
                                style: TextStylesPoppins.textStyles_12.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
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
                                                color: ColorStyle.darkestBlueSignUp,
                                                fontWeightDelta: 2
                                            ),
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
                                                color: ColorStyle.darkestBlueSignUp,
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
                                                color: ColorStyle.darkestBlueSignUp,
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
                                                color: ColorStyle.darkestBlueSignUp,
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
                        height: 16,
                      ),
                      titleListView(
                          ImageStyle.lockk,
                          'Security and Emergencies',
                          controller.helpCenterOne.value,
                          (index) {
                            if (index == 0) {
                              Get.to(WebViewCustom(title: 'Report Suspicious', url: ''));
                            } else if (index == 1) {
                              Get.to(WebViewCustom(title: 'Lost or Stolen Cards', url: ''));
                            } else if (index == 2) {
                              Get.to(WebViewCustom(title: 'Suspected Fraud', url: ''));
                            } else if (index == 3) {;
                              Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                            }
                          }
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      titleListView(
                          ImageStyle.locko,
                          'Directly take me to',
                          controller.helpCenterTwo.value,
                              (index) {
                                if (index == 0) {
                                  Get.to(WebViewCustom(title: 'Notification Settings', url: ''));
                                } else if (index == 1) {
                                  Get.to(WebViewCustom(title: 'ATM Locator', url: ''));
                                } else if (index == 2) {
                                  Get.to(WebViewCustom(title: 'Saving Goals', url: ''));
                                } else if (index == 3) {;
                                Get.to(WebViewCustom(title: 'My Profile', url: ''));
                                } else if (index == 4) {;
                                Get.to(WebViewCustom(title: 'Preferred Language Selection', url: ''));
                                }
                          }
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      titleListView(
                        ImageStyle.lockt,
                        'Policies and Procedures',
                          controller.helpCenterThree.value,
                              (index) {
                                // if (index == 0) {
                                //   Get.to(WebViewCustom(title: 'Report Suspicious', url: ''));
                                // } else if (index == 1) {
                                //   Get.to(WebViewCustom(title: 'Lost or Stolen Cards', url: ''));
                                // } else if (index == 2) {
                                //   Get.to(WebViewCustom(title: 'Suspected Fraud', url: ''));
                                // } else if (index == 3) {;
                                // Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                                // } else if (index == 4) {;
                                // Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                                // } else if (index == 5) {;
                                // Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                                // } else if (index == 6) {;
                                // Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                                // } else if (index == 7) {;
                                // Get.to(WebViewCustom(title: 'Lost access to my registered mobile or security questions', url: ''));
                                // }
                          }
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      titleListView(
                          ImageStyle.lockf,
                          'Security and Fraud',
                          controller.helpCenterFour.value,
                              (index) {
                                if (index == 0) {
                                  // Get.to(WebViewCustom(title: 'How to protect yourself against Faudsters', url: ''));
                                } else if (index == 1) {
                                  Get.to(WebViewCustom(title: 'What is phising', url: 'https://support.advancecapitalpay.com/hc/en-us/articles/5811445160849-What-is-Phishing-'));
                                } else if (index == 2) {
                                  Get.to(WebViewCustom(title: 'What is SMS phising', url: 'https://support.advancecapitalpay.com/hc/en-us/articles/5934674516369-What-is-SMS-phishing-'));
                                } else if (index == 3) {;
                                Get.to(WebViewCustom(title: 'What is Voice Phising', url: 'https://support.advancecapitalpay.com/hc/en-us/articles/5977164163473-What-is-Vishing-'));
                                } else if (index == 4) {;
                                // Get.to(WebViewCustom(title: 'Redirection of Funds', url: ''));
                                } else if (index == 5) {;
                                // Get.to(WebViewCustom(title: 'SIM Swap', url: ''));
                                }
                          }
                      ),

                      InfoIconDescription(
                        description:
                        'Still experiencing trouble getting in contact with us? You can directly e-mail customersupport@AdvanceCapitalPay.com. Our customer support representatives are available 24/7 across all channels.',
                        descriptionStyle: TextStylesPoppins.textStyles_12
                            .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        color: ColorStyle.hex('#E1F3FF'),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 16,right: 16),
                        padding: EdgeInsets.only(left: 16,right: 16, top: 16, bottom: 16),
                        child: Text(
                          'All channels are open 24 hours a day. 7 days a week. '
                              '\n\nContact channels may be monitoring or recorded. If you\'re unsure which option to select you can speak directly with one of our customer support representatives through the live chat button located in the top right of this page.',
                          textAlign: TextAlign.start,
                          style: TextStylesPoppins.textStyles_10.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            )
        )
      ],
    );
  }
}
