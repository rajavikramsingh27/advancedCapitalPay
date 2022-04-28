
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Views/Settings/NotificationSettingsDetails.dart';
import '../Views/Settings/NotificationSettingsAccountStatement.dart';



class NotificationSettingsController extends GetxController {


  static smsChangeDailyPaymentLimits() {
    return NotificationSettingsDetails(
      titleNotifications: 'Change of Personal Details',
      description: 'If SMS Notification is selected, some options may still be sent your messages inbox.',
      arrNotificationDetails: [
        'SMS Notification',
        'Change of Daily Payment Limits',
      ],
    );
  }

  static smsMessagesInbox() {
    return NotificationSettingsDetails(
      titleNotifications: 'Change of Personal Details',
      description: 'If SMS Notification is selected, some options may still be sent your messages inbox.',
      arrNotificationDetails: [
        'SMS Notification',
        'Messages Inbox',
      ],
    );
  }

  static notSubscribedSMSMessagesInbox() {
    return NotificationSettingsDetails(
      titleNotifications: 'Daily Account Balance',
      description: 'If SMS Notification is selected, some options may still be sent your messages inbox.',
      arrNotificationDetails: [
        'Not Subscribed',
        'SMS Notification',
        'Messages Inbox',
      ],
    );
  }

  static dailyWeeklyMonthlyYearly() {
    return NotificationSettingsDetails(
      titleNotifications: 'Daily Account Balance',
      description: 'If SMS Notification is selected, some options may still be sent your messages inbox.',
      arrNotificationDetails: [
        'Daily',
        'Weekly',
        'Monthly',
        'Yearly'
      ],
    );
  }

  static accountStatement() {
    return NotificationSettingsAccountStatement(
      titleNotifications: 'Account Statements',
      description: 'If SMS Notification is selected, some options may still be sent your messages inbox.',
      arrNotificationDetails: [
        'Sent To:',
        'Recurrence',
      ],
      arrNotificationOptions: [
        'Inbox',
        'Weekly'
      ],
      onTapIndex: (index) {
        if (index == 0) {
          Get.to(smsMessagesInbox());
        } else if (index == 1) {
          Get.to(dailyWeeklyMonthlyYearly());
        }
      },
    );
  }


}
