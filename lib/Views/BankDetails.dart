import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/ComponentsTitleInputs.dart';

class BankDetails extends StatelessWidget {
  final String? bankName;
  final String? bankCode;

  final List<String>? arrTitles;
  final List<String>? arrSubTitles;

  final List<String>? arrBankDetailsTitles;
  final List<String>? arrBankDetailsValue;

  final Function()? onTapSelectBankDetails;
  final Function()? onTapCancel;

  const BankDetails({
    Key? key,
    this.bankName = 'Bank Name ...',
    this.bankCode = 'Bank Code ...',
    this.arrTitles = const [
      'Title One',
      'Title Two',
      'Title Three',
      'Title Four'
    ],
    this.arrSubTitles = const [
      'SubTitle One',
      'SubTitle Two',
      'SubTitle Three',
      'SubTitle Four'
    ],
    this.arrBankDetailsTitles = const [
      'Bank Details Title One',
      'Bank Details Title Two'
    ],
    this.arrBankDetailsValue = const [
      'BankDetailsValue One',
      'BankDetailsValue Two'
    ],
    this.onTapSelectBankDetails,
    this.onTapCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Text(
            'Beneficial Bank Details',
            style: TextStyles.textStyles_18
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EffectStyle.padding(16, 16, 0, 0),
          padding: EffectStyle.padding(16, 16, 16, 16),
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Icon(
                    Icons.cancel,
                    size: 30,
                    color: ColorStyle.secondryBlack,
                  ),
                  onTap: onTapCancel,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ImageStyle.BankIcon,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bankName!,
                          style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        ),
                        Text(
                          bankCode!,
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    arrTitles![0],
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.hex('#016ECF'), fontWeightDelta: 2),
                  ),
                  Text(
                    arrTitles![1],
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.hex('#016ECF'), fontWeightDelta: 2),
                  ),
                  Text(
                    arrTitles![2],
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.hex('#016ECF'), fontWeightDelta: 2),
                  ),
                  Text(
                    arrTitles![3],
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.hex('#016ECF'), fontWeightDelta: 2),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    arrSubTitles![0],
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                  )),
                  Expanded(
                      child: Text(
                    arrSubTitles![1],
                    textAlign: TextAlign.center,
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                  )),
                  Expanded(
                      child: Text(
                    arrSubTitles![2],
                    textAlign: TextAlign.center,
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                  )),
                  Expanded(
                      child: Text(
                    arrSubTitles![3],
                    textAlign: TextAlign.end,
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                  )),
                ],
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: arrBankDetailsTitles!.length,
                  padding: EffectStyle.padding(0, 0, 20, 0),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          arrBankDetailsTitles![index],
                          textAlign: TextAlign.left,
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        )),
                        Expanded(
                            child: Text(
                          arrBankDetailsValue![index],
                          textAlign: TextAlign.center,
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1),
                        )),
                      ],
                    );
                  }),
              SizedBox(
                height: 30,
              ),
              ButtonContinueCancel(
                  radiusBorder: 40,
                  height: 44,
                  textFirst: 'Bank to Search',
                  colorBGFirst: Colors.transparent,
                  colorBorderFirst: ColorStyle.hex('#016ECF'),
                  textStyleFirst: TextStyles.textStyles_12.apply(
                    fontWeightDelta: 1,
                    color: ColorStyle.hex('#016ECF'),
                  ),
                  onTapFirst: () {},
                  textSecond: 'Select Bank Details',
                  colorBGSecond: ColorStyle.hex('#016ECF'),
                  colorBorderSecond: Colors.transparent,
                  textStyleSecond: TextStyles.textStyles_12.apply(
                      fontWeightDelta: 1, color: ColorStyle.primaryWhite),
                  onTapSecond: onTapSelectBankDetails),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
