
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Settings/BalanceSheetCellComponenets.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';

class YourFavoriteAccount extends StatelessWidget {
  final String? title;

  const YourFavoriteAccount({Key? key, required this.title}) : super(key: key);

  standingOrders() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Text(
            'Standing Orders',
            style: TextStylesPoppins.textStyles_18
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
                standingOrders(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
