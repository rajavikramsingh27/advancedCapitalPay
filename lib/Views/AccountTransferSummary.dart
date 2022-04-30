import 'package:advanced_capital_pay/Components/AccountSelection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/PayingFromAccount.dart';
import '../Components/PopUp.dart';
import '../Components/RedioButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class AccountTransferSummary extends StatelessWidget {
  const AccountTransferSummary({Key? key}) : super(key: key);

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
            appBar: AppBarStyleTitle(
              title: 'Account Transfer Summary',
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {},
              ),
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {
                  filter();
                },
              ),
            ),
            backgroundColor: Colors.transparent,
            body:SingleChildScrollView(
              padding: EdgeInsets.only(left: 16,right: 16,top: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Selection',
                    // controller.listApplyLeave[index],
                    style: TextStyles
                        .textStyles_14
                        .apply(
                        fontWeightDelta: 2,
                        color: ColorStyle
                            .primaryWhite),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AccountSelection(),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paying From Account',
                        style: TextStyles
                            .textStyles_16
                            .apply(
                            fontWeightDelta: 2,
                            color: ColorStyle
                                .primaryWhite),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5,right: 8),
                        width: 60,
                        height: 25,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.edit,
                              size: 16,
                              color: ColorStyle.blueSKY,
                            ),
                            Text(
                              'Edit',
                              style: TextStyles
                                  .textStyles_12
                                  .apply(
                                  fontWeightDelta: 2,
                                  color: ColorStyle
                                      .blueSKY),
                            ),

                          ],
                        ),


                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(4)

                        ),

                      ),

                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child:   ListView.builder(
                      // padding: EdgeInsets.only(top: 20),
                      shrinkWrap: true,
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder:
                          (BuildContext context, int index) {
                        return   PayingFromAccount();
                      }),
                ),


                ],
              ),
            )
        ),
      ],
    );
  }
}
