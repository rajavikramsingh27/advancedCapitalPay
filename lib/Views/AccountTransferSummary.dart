import 'package:advanced_capital_pay/Components/InfoIconDescription.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/PayingFromAccount.dart';
import '../Components/PopUp.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:get/get.dart';

class AccountTransferSummary extends StatelessWidget {
  const AccountTransferSummary({Key? key}) : super(key: key);

  titlePayingAccountList(String title,EdgeInsets padding) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: padding,
          child: Text(
            title,
            style: TextStyles
                .textStyles_16
                .apply(
                fontWeightDelta: 2,
                color: ColorStyle
                    .primaryWhite),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 220,
          child:   ListView.separated(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              padding: padding,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10,);
              },
              itemBuilder:
                  (BuildContext context, int index) {
                return   PayingFromAccount();
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: ColorStyle.darkestBlue,
            appBar: AppBarStyleTitle(
              title: 'Account Transfer Summary',
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {
                  Get.back();
                },
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
            body:SingleChildScrollView(
              // padding: EdgeInsets.only(left: 16,right: 16,top: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 16,right: 16,),
                    child: InfoIconDescription(
                      title: 'Account Selection',
                      description: 'From here you can transfer money between your own accounts. You can set up a one off transfer or standing order.',
                      textStyle: TextStyles.textStyles_14
                          .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
                      descriptionStyle: TextStyles.textStyles_12
                          .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  titlePayingAccountList( 'Paying From Account',EffectStyle.padding(16, 16, 0, 0)),
                  SizedBox(
                    height: 16,
                  ),
                  titlePayingAccountList('Paying To Account', EffectStyle.padding(16, 16, 0, 0)),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EffectStyle.padding(16, 16, 0, 0),
                    child: ButtonContinueCancel(
                      radiusBorder: 40,

                      textFirst:'Cancel',
                      colorBGFirst:Colors.transparent,
                      colorBorderFirst:ColorStyle.hex('#016ECF'),
                      textStyleFirst: TextStyles.textStyles_14.apply(
                        fontWeightDelta: 1,
                        color: ColorStyle.hex('#016ECF'),
                      ),
                      onTapFirst: () {

                      },
                      textSecond:'Continue',
                      colorBGSecond: ColorStyle.hex('#016ECF'),
                      colorBorderSecond: Colors.transparent,
                      textStyleSecond: TextStyles.textStyles_14.apply(
                          fontWeightDelta: 1,
                          color: ColorStyle.primaryWhite
                      ),
                      onTapSecond: () {

                      },
                    ),
                  )
                ],
              ),
            )
        ),
      ],
    );
  }
}
