
import '../../Views/Settings/BalanceSheetCellComponenets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Views/Settings/DailyAccountBalance.dart';


class DailyAccountBalance extends StatelessWidget {
  const DailyAccountBalance({Key? key}) : super(key: key);

  standingOrders() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Text(
            'Standing Orders',
            style: TextStyles.textStyles_18
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
          ),
        ),
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EffectStyle.padding(16, 16, 16, 16),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return BalanceSheetCellComponenets(
              titleOne: 'Savings Account',
              valueOne: 'Monthly Bill',
              titleTwo: 'Amount',
              valueTwo: '\$140.00',
            );
          },
        ),
      ],
    );
  }

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
                standingOrders(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
