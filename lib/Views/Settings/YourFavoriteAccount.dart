
import 'package:advanced_capital_pay/Views/BalanceSheetComponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Views/Settings/DailyAccountBalance.dart';

class YourFavoriteAccount extends StatelessWidget {
  final String? title;

  const YourFavoriteAccount({Key? key, required this.title}) : super(key: key);

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
              icon: Image.asset(ImageStyle.back_circle, width: 30,),
              onPressed: () {
                Get.back();
              },
            ),
          ),
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
                BalanceSheetComponents(
                  title: title!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
