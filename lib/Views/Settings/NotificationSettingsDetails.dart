import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Views/Settings/TitleSwitch.dart';
import '../../Views/Settings/ButtonsWithDescriptionBottomUI.dart';

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
                  nameStyle: TextStyles.textStyles_18.apply(
                      color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                  descriptionStyle: TextStyles.textStyles_12
                      .apply(color: ColorStyle.primaryWhite),
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
                  style: TextStyles.textStyles_16.apply(
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
