import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/CountryPicker.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class NewTransfer extends StatelessWidget {
  const NewTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
                 title: Text('New Transfer'),
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
                    'What amount would you like to transfer?',
                    style: TextStyles.textStyles_12.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height: 20,),


                  NewTransferCustom(),


                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20),
alignment: Alignment.centerLeft,
                    width:360,
                    height: 40,
                    child:       Text(
                      'Transfer Details',
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2
                      ),
                    ),
                    decoration: BoxDecoration(
                      // color: ColorStyle.primaryWhite,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(ImageStyle.Rectangle1957),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    // height: 300,
                    // width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 20,),
                        Text(
                          'Transfer Date and Frequency*',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonCustom(
                          radiusBorder: 50,
                          colorBorder: ColorStyle.blueSKY,
                          onChanged: (text) {

                          },
                          listValue: [
                         'Send Transfer Now',
                          ],
                          selectedValue: "Send Transfer Now",
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Fees Paid By*',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonCustom(
                          radiusBorder: 50,
                          colorBorder: Colors.grey,
                          onChanged: (text) {

                          },
                          listValue: [
                         'All Charges To Be Paid From My Account',
                          ],
                          selectedValue: "All Charges To Be Paid From My Account",
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Payment Reference For Your Records',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldRadius(),

                        SizedBox(height: 20,),
                        Text(
                          'Reference for Beneficiary',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        DropdownButtonCustom(
                          radiusBorder: 50,
                          colorBorder: Colors.grey,
                          onChanged: (text) {

                          },
                          listValue: [
                            'Invoice#120495-9483',
                          ],
                          selectedValue: "Invoice#120495-9483",
                        ),

                          // prefix: Image.asset(ImageStyle.user),
                        SizedBox(height: 10,),

                          // colorFill: ColorStyle..withOpacity(0.5),



                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )


        )
      ],
    );

  }
}
