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
import '../Components/ListViewIconTitleSubtitle.dart';



class AppSettings extends StatelessWidget {
  const AppSettings({Key? key}) : super(key: key);

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
          body: SingleChildScrollView(
            padding: EffectStyle.padding(16, 16, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarStyleLeadingTitleTrailing(
                  leadingImage: ImageStyle.ellipse2,
                  nameUser: 'HARRISON SMITH',
                  descriptionUser: 'Your Personal Settings',
                  trailingAction: [
                    IconButton(
                      icon: Image.asset(
                        ImageStyle.chat,
                        height: 26,
                      ),
                      onPressed: () {
                        // Get.to(MessagePage());
                      },
                    ),
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
                ListViewIconTitleSubtitle(
                  title: "App Settings",
                  arrListIcons: [
                    ImageStyle.user6,
                    ImageStyle.theme,
                    ImageStyle.envelope,

                    ImageStyle.bell,
                    ImageStyle.browser,
                    ImageStyle.creditcards,

                    ImageStyle.internet,
                  ],
                  arrListTitles: [
                    'My Profile',
                    'Appearance',
                    'Messages',

                    'Notifications',
                    'Favorite Account',
                    'Favorite Card',

                    'Preferred language',
                  ],
                  arrListSubtitles: [
                    '',
                    '',
                    '',

                    '',
                    'AED 319485739302',
                    'Virtual Debit ***777',

                    '',
                  ],
                ),
                ListViewIconTitleSubtitle(
                  title: "Feature Settings",
                  arrListIcons: [
                    ImageStyle.apple,
                    ImageStyle.pricing,
                    ImageStyle.bell,
                    ImageStyle.bill,
                  ],
                  arrListTitles: [
                    'Apple Pay',
                    'Manage Subscription',
                    'Manage Currency Alerts',
                    'Statement Frequency',
                  ],
                  arrListSubtitles: [
                    '',
                    '',
                    '',
                    '',
                  ],
                ),
                ListViewIconTitleSubtitle(
                  title: "Account Settings",
                  arrListIcons: [
                    ImageStyle.key,
                    ImageStyle.creditcard5,
                    ImageStyle.shield,

                    ImageStyle.sale,
                  ],
                  arrListTitles: [
                    'Change Mobile PIN',
                    'Card Security',
                    'Update Security Questions',

                    'Transaction Limits',
                  ],
                  arrListSubtitles: [
                    '',
                    '',
                    '',
                    '',
                  ],
                ),
                ListViewIconTitleSubtitle(
                  title: "Help Center",
                  arrListIcons: [
                    ImageStyle.customersupport,
                    ImageStyle.request,
                    ImageStyle.faq,

                    ImageStyle.user6,
                    ImageStyle.creditcard6,
                    ImageStyle.payment3,

                    ImageStyle.cryptocurrencies,
                  ],
                  arrListTitles: [
                    '24/7 Live Customer Support',
                    'Submit a Request',
                    'Frequently Asked Questions',

                    'Managing My Accuont',
                    'Virtual and Physical Cards',
                    'Making and Recieving International Payments',
                    ''
                  ],
                  arrListSubtitles: [
                    '',
                    '',
                    '',

                    '',
                    '',
                    '',
                    '',
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
