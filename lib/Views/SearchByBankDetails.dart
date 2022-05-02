

import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/ComponentsTitleInputs.dart';


class SearchByBankDetails extends StatelessWidget {
  final Function()? onTapCancel;
  final Function()? onTapSearchForBankDetails;

  const SearchByBankDetails({Key? key, this.onTapCancel, this.onTapSearchForBankDetails}) : super(key: key);

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
            style: TextStyles.textStyles_18.apply(
                color: ColorStyle.primaryWhite, fontWeightDelta: 2),
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
                  child: Icon(Icons.cancel, size: 30, color: ColorStyle.secondryBlack,),
                  onTap: onTapCancel
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(ImageStyle.BankIcon, height: 30,),
                  SizedBox(width: 10,),
                  Expanded(child: Text(
                    'Find Bank Details From a SWIFTcode',
                    style: TextStyles.textStyles_16.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                  ),),
                ],
              ),
              SizedBox(height: 6,),
              Text(
                'Enter the SWIFT/Bic code below to see and automatically fill the associated bank details.',
                style: TextStyles.textStyles_12.apply(
                    color: ColorStyle.secondryBlack, fontWeightDelta: 1),
              ),
              ComponentsTitleInputs.titleCountryPicker('Select Country', Icon(Icons.keyboard_arrow_down)),
              ComponentsTitleInputs.titleDropDown(
                  'Bank Name', false, 'Start Typing to see list of the Banks',
                  ['Start Typing to see list of the Banks',  'HSBC bank PLC (EUR)', 'HSBC bank PLC (RFB)' ]),
              ComponentsTitleInputs.titleDropDown(
                  'Select City', false, 'New York',
                  ['New York' , 'London', 'Paris']),
              SizedBox(height: 16,),
              ElevatedButtonCustom(
                colorBG: ColorStyle.primaryWhite,
                textStyle: TextStyles.textStyles_14
                    .apply(color: ColorStyle.blueSKY, fontWeightDelta: 1),
                colorBorder: ColorStyle.blueSKY,
                text: 'Search For Bank Details',
                radiusBorder: 30,
                onTap: onTapSearchForBankDetails
              )
            ],
          ),
        )
      ],
    );
  }
}
