import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/SummaryTransferTop.dart';



class CurrencyExchange extends StatelessWidget {
  const CurrencyExchange({Key? key}) : super(key: key);

  separatorLine() {
    return Container(
      height: 1,
      color: ColorStyle.grey,
    );
  }

  separtorSpace() {
    return SizedBox(height: 20);
  }

  titleDesc(String title, String desc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.textStyles_9.apply(
              color: ColorStyle.grey, fontWeightDelta: 1),
        ),
        Text(
          desc,
          style: TextStyles.textStyles_10.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'Successful Currency Exchange',
                style: TextStyles.textStyles_14
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
              ),
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
                onPressed: () {},
              ),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.only(right: 18, left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        separtorSpace(),
                        SummaryTransferTop(),
                        separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pay With',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey, fontWeightDelta: 1),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Bank Account',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 1),
                                ),
                                Text(
                                  'HARRISON SMITH CURRENCT A/C USD',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Account Details',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey, fontWeightDelta: 1),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Account Type',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 1),
                                ),
                                Text(
                                  'Plus + Current A/C',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Account Number',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2),
                                ),
                                Text(
                                  '0235859304',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        separatorLine(),
                        separtorSpace(),
                        titleDesc(
                          'Conversion Fee',
                          '10.00 USD'
                        ),
                        separtorSpace(),
                        separatorLine(),
                        separtorSpace(),
                        titleDesc(
                            'Exchange Reference',
                            '20200507ACP39483MKS24'
                        ),
                        separtorSpace(),
                        separatorLine(),
                        separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Recieved',
                              style: TextStyles.textStyles_12.apply(
                                  color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                            ),
                            Text(
                              '470,080 AED',
                              style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        ButtonContinueCancel(
                          radiusBorder: 40,

                          textFirst:'Return to Dashboard',
                          colorBGFirst:Colors.transparent,
                          colorBorderFirst:ColorStyle.hex('#016ECF'),
                          textStyleFirst: TextStyles.textStyles_14.apply(
                            fontWeightDelta: 1,
                            color: ColorStyle.hex('#016ECF'),
                          ),
                          onTapFirst: () {

                          },
                          textSecond:'Share',
                          colorBGSecond: ColorStyle.hex('#016ECF'),
                          colorBorderSecond: Colors.transparent,
                          textStyleSecond: TextStyles.textStyles_14.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.primaryWhite
                          ),
                          onTapSecond: () {

                          },
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                    decoration: EffectStyle.decorationTransferSummary()
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
