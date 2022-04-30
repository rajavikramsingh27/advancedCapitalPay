import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/NewBeneficiarySummary.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/BeneficiaryInternationalController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class NewBeneficiary1 extends StatelessWidget {
  const NewBeneficiary1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text('FromAccount'),
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
                    'New Beneficiary Summary',
                    style: TextStyles.textStyles_20.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  NewBeneficiarySummary(),

                  SizedBox(height: 20,),

                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beneficiary Details',
                          style: TextStyles.textStyles_20.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 2
                          ),
                        ),
                        InkWell(
                          child:   Container(
                            child: Row(
                              children: [
                                SizedBox(width: 4,),
                                Icon(Icons.edit,  color: ColorStyle.blueSKY,size: 20,),
                                SizedBox(width: 4,),
                                Text(
                                  'Edit',
                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          onTap: (){},
                        )
                      ],
                    ),
                    onTap: (){},
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    // height: 300,
                    // width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Type',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          hintText: 'Local Beneficiary',
                          // prefix: Image.asset(ImageStyle.user),
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Select Country',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        CountryPicker(),
                        SizedBox(height: 20,),
                        Text(
                          'Full Beneficiary Name',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(child: TextFieldCustom(
                              // prefix: Image.asset(ImageStyle.user),
                              hintText: 'Anthony DC',
                              textStyle: TextStyles.textStyles_16.apply(
                                color: ColorStyle.primaryWhite,
                              ),
                              // colorFill: ColorStyle..withOpacity(0.5),
                            ),),
                            SizedBox(width: 10,),
                            Image.asset(ImageStyle.Rectangle2094,height: 70,),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Account Type',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Personal Account',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Account Type',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Ant',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Address Line 1',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: '26-30 York Way, Kings Cross',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Address Line 2',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: '26-30 York Way, Kings Cross',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'City',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'New York',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Postal/ZIP Code',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'N1 9AA',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,

                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),

                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  SizedBox(height: 20,),

                  Text(
                    'Beneficiary Contact Details',
                    style: TextStyles.textStyles_20.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    // height: 300,
                    // width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 20,),
                        Text(
                          'Country',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        CountryPicker(),
                        SizedBox(height: 20,),
                        Text(
                          'Account Number',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: '00117384934',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Email Address',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Anthony@gmail.com',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,

                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Beneficiary Documentation',
                          style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Upload any relevant documentation relating to the beneficiary such as Identification Documents, Company Details, Invoices and more.',
                          style: TextStyles.textStyles_12.apply(
                            color: ColorStyle.secondryBlack,
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Beneficiary Bank Details',
                        style: TextStyles.textStyles_20.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2
                        ),
                      ),
                      InkWell(
                        child:   Container(
                          child: Row(
                            children: [
                              SizedBox(width: 4,),
                              Icon(Icons.edit,  color: ColorStyle.blueSKY,size: 20,),
                              SizedBox(width: 4,),
                              Text(
                                'Edit',
                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.blueSKY,
                                    fontWeightDelta: 2
                                ),
                              ),
                            ],
                          ),
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: ColorStyle.primaryWhite,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onTap: (){

                        },
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    // height: 300,
                    // width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 20,),
                        Text(
                          'Country',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        CountryPicker(),
                        SizedBox(height: 20,),
                        Text(
                          'Account Number',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: '00117384934',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Sort Code',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '43',
                                style: TextStyles.textStyles_16.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              height: 42,
                              width: 85,
                            ),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),

                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '56',
                                style: TextStyles.textStyles_16.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              height: 42,
                              width: 85,
                            ),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),

                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),

                              height: 2,

                            ),
                            SizedBox(width: 2,),
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.secondryBlack
                                  )
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '76',
                                style: TextStyles.textStyles_16.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              height: 42,
                              width: 85,
                            ),


                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Bank Address',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Canada Square Canary Wharf',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Branch Name/Code',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Canada Square Canary Wharf',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'City',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Canada Square Canary Wharf',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Payment Reference',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'This reference will automatically show when making a payment to the beneficiary but can be changed at any time.',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          // prefix: Image.asset(ImageStyle.user),
                          hintText: 'Concert Tickets',
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,

                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),


                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  SizedBox(height: 20,),
                  GradientButtonWith(),
                  SizedBox(height: 20,),


                ],
              ),
            )


        )
      ],
    );
  }
}
