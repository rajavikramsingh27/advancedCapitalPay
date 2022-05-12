
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';

import '../../Components/ButtonCustom.dart';
import '../../Components/ComponentsTitleInputs.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';
// import '../Components/ButtonCustom.dart';
// import '../Styles/ColorStyle.dart';
// import '../Styles/EffectStyle.dart';
// import '../Styles/TextStyles.dart';
// import '../Components/ComponentsTitleInputs.dart';

class SearchByBankSwift extends StatelessWidget {
  final Function()? onTapCancel;
  final Function()? onTapSubmit;

  const SearchByBankSwift({Key? key, this.onTapCancel, this.onTapSubmit}) : super(key: key);

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
            style: TextStylesPoppins.textStyles_18.apply(
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
                    style: TextStylesPoppins.textStyles_16.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                  ),),
                ],
              ),
              SizedBox(height: 6,),
              Text(
                'Enter the SWIFT/Bic code below to see and automatically fill the associated bank details.',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.secondryBlack, fontWeightDelta: 1),
              ),
              ComponentsTitleInputs.textFieldsAccount('Enter a SWIFT Code', false, 'AAAA-BB-CC123'),
              SizedBox(height: 30,),
              ElevatedButtonCustom(
                colorBG: ColorStyle.darkestBlueSignUp,
                textStyle: TextStylesPoppins.textStyles_15.apply(
                  fontWeightDelta: 1,
                  color: ColorStyle.primaryWhite,
                ),
                colorBorder: Colors.transparent,
                text: 'Search For Bank Details',
                height: 50,
                width: MediaQuery.of(context).size.width-120,
                radiusBorder:50,
                onTap: onTapSubmit,
              )
            ],
          ),
        )
      ],
    );
  }
}
