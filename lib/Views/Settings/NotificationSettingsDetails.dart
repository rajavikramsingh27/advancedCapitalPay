import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Settings/TitleSwitch.dart';
import 'package:advanced_capital_pay/Views/Settings/ButtonsWithDescriptionBottomUI.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
class NotificationSettingsDetails extends StatelessWidget {
  final String? titleNotifications;
  final String? description;
  final List<String>? arrNotificationDetails;

  const NotificationSettingsDetails(
      {Key? key,
      this.titleNotifications = 'Notification Setting Title',
      this.arrNotificationDetails,
      this.description = 'Description ...'})
      : super(key: key);

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
                  nameStyle: TextStylesPoppins.textStyles_18.apply(
                      color: ColorStyle.primaryWhite, fontWeightDelta: 1),
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
                SizedBox(
                  height: 16,
                ),
                Text(
                  titleNotifications!,
                  style: TextStylesPoppins.textStyles_16.apply(
                      color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EffectStyle.padding(16, 16, 16, 16),
                  decoration: BoxDecoration(
                      color: ColorStyle.primaryWhite,
                      borderRadius: EffectStyle.radiusCustom(16)),
                  child: Column(
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          itemCount: arrNotificationDetails!.length,
                          separatorBuilder: (context, index) {
                            return Container(
                              height: 1,
                              color: ColorStyle.grey,
                              margin: EffectStyle.padding(0, 0, 10, 10),
                            );
                          },
                          itemBuilder: (context, index) {
                            return TitleSwitch(
                              title: arrNotificationDetails![index],
                            );
                          }),
                      Container(
                        height: 1,
                        color: ColorStyle.grey,
                        margin: EffectStyle.padding(0, 0, 10, 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonsWithDescriptionBottomUI(
                        description: description,
                        textFirst: 'Cancel',
                        textSecond: 'Done',
                        onTapFirst: () {},
                        onTapSecond: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
