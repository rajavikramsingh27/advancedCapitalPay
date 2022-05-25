import 'package:advanced_capital_pay/Views/Settings/BalanceSheetCellComponenets.dart';
import 'package:advanced_capital_pay/Views/Settings/YourFavoriteAccount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Controllers/AccountDetails.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/AccountDetails.dart';


class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AccountDetailsConroller());
    return GetBuilder(
      init: AccountDetailsConroller(),
      initState: (state) {

      },
      builder: (auth) {
        return   Stack(
          children: [
            BackgroundImage(),
            Scaffold(
                backgroundColor: Colors.transparent,
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
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarStyleLeadingTitleTrailing(
                        leadingImage: ImageStyle.ellipse2,
                        nameUser: 'HARRISON SMITH',
                        descriptionUser: 'Your Personal Settings',
                        nameStyle: TextStylesPoppins.textStyles_18.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 1),
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
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Your Account Details',
                          style: TextStylesPoppins.textStyles_18.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Select Account to view details',
                          style: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 0),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: InkWell(
                          child: BalanceSheetCellComponenets(),
                          onTap: () {
                            Get.to(YourFavoriteAccount(
                              title: 'Select Account to view details',
                            ));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Your Account Details',
                          style: TextStylesPoppins.textStyles_18.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),

                        // height: 233,
                        child: ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 16),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                            controller.chooseAccountDetails.length,
                            itemBuilder:
                                (BuildContext context, int index) {
                              return Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    controller
                                        .chooseAccountDetails[index],
                                    style: TextStylesPoppins.textStyles_16.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(

                                    margin: EdgeInsets.only(bottom: 8),
                                    height: 54,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(30),
                                        border: Border.all(
                                          width: 1,
                                          color: ColorStyle.secondryBlack,
                                        )),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            // obscureText: true,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              // border: OutlineInputBorder(),
                                              hintText: '03228464533',
                                              labelStyle: TextStylesPoppins
                                                  .textStyles_14
                                                  .apply(
                                                color: Colors.grey,
                                                fontWeightDelta: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(width: 10,),
                                        Image.asset(
                                          ImageStyle.Iconawesomecopy,
                                          height: 24,
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            }),
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        );
      },
    );


  }
}
