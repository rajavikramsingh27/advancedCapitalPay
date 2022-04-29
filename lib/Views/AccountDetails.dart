import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Controllers/AccountDetails.dart';
import '../Controllers/CurrentAccountController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'Settings/BalanceSheetCellComponenets.dart';
import '../Views/Settings/YourFavoriteAccount.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AccountDetailsConroller());
    return Stack(
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
            body: GetBuilder<AccountDetailsConroller>(
                init: AccountDetailsConroller(),
                initState: (state) {
                  // controller.reset();
                  // print(controller.listSelected.value);
                },
                builder: (authController) {
                  return Obx(() => SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppBarStyleLeadingTitleTrailing(
                              leadingImage: ImageStyle.ellipse2,
                              nameUser: 'HARRISON SMITH',
                              descriptionUser: 'Your Personal Settings',
                              nameStyle: TextStyles.textStyles_18.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1),
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
                            Container(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: Text(
                                'Your Account Details',
                                style: TextStyles.textStyles_18.apply(
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
                                style: TextStyles.textStyles_16.apply(
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
                                style: TextStyles.textStyles_18.apply(
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
                                          style: TextStyles.textStyles_16.apply(
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
                                                    labelStyle: TextStyles
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
                      ));
                }))
      ],
    );
  }
}
