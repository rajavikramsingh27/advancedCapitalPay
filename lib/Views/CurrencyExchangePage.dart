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

class CurrencyExchangePage  extends StatelessWidget {
  const CurrencyExchangePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text('Currency Exchange'),
              leadingButton: BackButton(

                onPressed: () {},
              ),
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {},
              ),

            ),
            backgroundColor: Colors.transparent,

            body:     SingleChildScrollView(
              padding: EdgeInsets.only(left: 14,right: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    'Please confirm the exchange details below before confirming',
                    style: TextStyles.textStyles_12.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(
                    ImageStyle.Card3,
                    // height: 30,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Exchange Currency and Amount',
                    style: TextStyles.textStyles_12.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  NewTransferCustom(),
                  SizedBox(height: 40,),
                  GradientButtonWithContineu()




                ],
              ),
            )


        )
      ],
    );
  }
}
