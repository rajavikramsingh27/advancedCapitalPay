
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Dashboard/SummaryTransferTop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TransferSummary extends StatelessWidget {
  final EdgeInsets? margin;
  const TransferSummary({Key? key, this.margin = EdgeInsets.zero}) : super(key: key);

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
          style: TextStylesPoppins.textStyles_9.apply(
              color: ColorStyle.grey, fontWeightDelta: 1),
        ),
        Text(
          desc,
          style: TextStylesPoppins.textStyles_10.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: EdgeInsets.only(right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  style: TextStylesPoppins.textStyles_8.apply(
                      color: ColorStyle.grey, fontWeightDelta: 1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Bank Account',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 1),
                    ),
                    Text(
                      'HARRISON SMITH CURRENCT A/C USD',
                      style: TextStylesPoppins.textStyles_10.apply(
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
                  style: TextStylesPoppins.textStyles_8.apply(
                      color: ColorStyle.grey, fontWeightDelta: 1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Account Type',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 1),
                    ),
                    Text(
                      'Plus + Current A/C',
                      style: TextStylesPoppins.textStyles_10.apply(
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
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 2),
                    ),
                    Text(
                      '0235859304',
                      style: TextStylesPoppins.textStyles_10.apply(
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
              children: [
                Text(
                  'Beneficiary Name',
                  style: TextStylesPoppins.textStyles_8.apply(
                      color: ColorStyle.grey, fontWeightDelta: 1),
                ),
                Expanded(child: Text(
                  'HARRISON SMITH CURRENCT A/C USD',
                  textAlign: TextAlign.end,
                  style: TextStylesPoppins.textStyles_10.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2),
                )),
              ],
            ),
            separtorSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beneficiary A/C Details',
                  style: TextStylesPoppins.textStyles_8.apply(
                      color: ColorStyle.grey, fontWeightDelta: 1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Account Number',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 1),
                    ),
                    Text(
                      '0011738934',
                      style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'BSB Number',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 2),
                    ),
                    Text(
                      '082-976',
                      style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 100,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'IBAN Number',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 1),
                    ),
                    Text(
                      'G86RBOS1843400600431',
                      style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Swift Code',
                      style: TextStylesPoppins.textStyles_8.apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 2),
                    ),
                    Text(
                      'RBOSOB4L',
                      style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2),
                    ),
                  ],
                ),
              ],
            ),

            separtorSpace(),
            separatorLine(),
            separtorSpace(),
            titleDesc(
                'Transaction Purpose',
                'Personal Expense'
            ),
            separtorSpace(),
            separatorLine(),
            separtorSpace(),
            titleDesc(
                'Payment Reference',
                'Invoice#120495-9483'
            ),
            separtorSpace(),
            separatorLine(),
            separtorSpace(),
            titleDesc(
                'Payment Reference',
                'Invoice#120495-9483'
            ),
            SizedBox(height: 10,),
            titleDesc(
                'Our Fees',
                '-10.00 USD'
            ),
            separtorSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total to Recieve',
                  style: TextStylesPoppins.textStyles_12.apply(
                      color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                ),
                Text(
                  '470,080 AED',
                  style: TextStylesPoppins.textStyles_10.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2),
                ),
              ],
            ),
            separtorSpace(),
          ],
        ),
        decoration: EffectStyle.decorationTransferSummary()
    );
  }
}
