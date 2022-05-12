import 'package:advanced_capital_pay/Views/Settings/NotificationSettingsDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/SearchBarCustom.dart';
import 'package:advanced_capital_pay/Components/ListViewIconTitleSubtitle.dart';
import 'package:advanced_capital_pay/Controllers/NotificationSettingsController.dart';
import 'package:advanced_capital_pay/Views/Settings/DailyAccountBalance.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({Key? key}) : super(key: key);

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
          appBar: AppBarStyle(),
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
                  nameStyle: TextStylesPoppins.textStyles_18
                      .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                  descriptionStyle: TextStylesPoppins.textStyles_12
                      .apply(color: ColorStyle.primaryWhite),
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
                AppBarStyleTitle(
                  title: 'Notifications Settings',
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
                ListViewIconTitleSubtitle(
                  title: "Security",
                  arrListIcons: [
                    '',
                    '',
                  ],
                  arrListTitles: [
                    'Change of Personal Details',
                    'Change of Daily Payment Limits',
                  ],
                  arrListSubtitles: [
                    'SMS',
                    'SMS',
                  ],
                  onTapIndex: (index) {
                    Get.to(NotificationSettingsController.smsMessagesInbox());
                  },
                ),
                ListViewIconTitleSubtitle(
                  title: "Account",
                  arrListIcons: [
                    '',
                    '',
                    '',
                  ],
                  arrListTitles: [
                    'Daily Account Balance',
                    'Account Statements',
                    'Bank Statements',
                  ],
                  arrListSubtitles: [
                    'Off',
                    'Weekly Inbox',
                    'Inbox',
                  ],
                  onTapIndex: (index) {
                    if (index == 0) {
                      Get.to(DailyAccountBalance());
                    } else if (index == 1) {
                      Get.to(NotificationSettingsController.accountStatement());
                    } else if (index == 2) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    }
                  },
                ),
                ListViewIconTitleSubtitle(
                  title: "Payment",
                  arrListIcons: [
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                  ],
                  onTapIndex: (index) {
                    if (index == 0) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 1) {
                      // Get.to(NotificationSettingsController.notSubscribedSMSMessagesInbox());
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 2) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 3) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 4) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 5) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 6) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    }
                  },
                  arrListTitles: [
                    'Payment Sent',
                    'Payment Recieved',
                    'New Beneficiary',
                    'Beneficiary Detail Changes',
                    'Rejected/Failed Payment',
                    'Insufficient Funds',
                    'ATM Withdrawls',
                    'Online Card Purchases',
                  ],
                  arrListSubtitles: [
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                    'SMS',
                  ],
                ),
                ListViewIconTitleSubtitle(
                  title: "Cryptocurrency",
                  arrListIcons: [
                    '',
                    '',
                    '',
                    '',
                    '',
                  ],
                  onTapIndex: (index) {
                    if (index == 0) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 1) {
                      // Get.to(NotificationSettingsController.notSubscribedSMSMessagesInbox());
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 2) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 3) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 4) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    }
                  },
                  arrListTitles: [
                    'Cryptocurrency Deposits',
                    'Cryptocurrency Withdrawls',
                    'Cryptocurrency Exchanges',
                    'Fulfilled Orders',
                    'Cryptocurrency Price Alerts',
                  ],
                  arrListSubtitles: [
                    'SMS',
                    'SMS',
                    'Off',
                    'Inbox',
                    'Off',
                  ],
                ),
                ListViewIconTitleSubtitle(
                  title: "Important Notices",
                  arrListIcons: [
                    '',
                    '',
                  ],
                  onTapIndex: (index) {
                    if (index == 0) {
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    } else if (index == 1) {
                      // Get.to(NotificationSettingsController.notSubscribedSMSMessagesInbox());
                      Get.to(NotificationSettingsController.smsMessagesInbox());
                    }
                  },
                  arrListTitles: [
                    'Policy Updates',
                    'Scheduled Maintance',
                  ],
                  arrListSubtitles: [
                    'SMS',
                    'SMS',
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
