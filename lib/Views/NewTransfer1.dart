import 'package:flutter/cupertino.dart';
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


class NewTransfer1 extends StatelessWidget {
  const NewTransfer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:   AppBarStyleCustomBenifi(
              title: Text('Transfer Summary'),
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
            body:    SingleChildScrollView(
              padding: EdgeInsets.only(left: 14,right: 14),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
padding: EdgeInsets.only(left: 16,right: 16),
                    // width: 164,
                    height: 100,
                    child:   Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Our Fees',
                              style: TextStyles.textStyles_6.apply(
                                  color: ColorStyle.primaryWhite.withOpacity(.4),
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '-10.00 USD',
                              style: TextStyles.textStyles_6.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Conversion Amount',
                              style: TextStyles.textStyles_6.apply(
                                  color: ColorStyle.primaryWhite.withOpacity(.4),
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '-1.920 USD',
                              style: TextStyles.textStyles_6.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total to Recieve',
                              style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite.withOpacity(.4),
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '470,080 AED',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],
                        )
                      ],
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
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    // height: 300,
                    // width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
                        Container(child: Image.asset(
                          ImageStyle.mobileBlueBG,
                          height: 60,
                        ), alignment: Alignment.center,),
                        SizedBox(height: 20,),
                        Text(
                          'Step 1',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                         'In order to upload the beneficiary you will first need to answer the security questions associated with your account alternatively. You can click generate OTP to activate a one time passcode (OTP) to associated mobile number.',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Step 2',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'A six digit code will be sent to your mobile number associated with the account, enter this into the Security Box below. If you don’t have access to your Mobile device simply click Enter Security Questions providing the answers successfully will allow you to continue.',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Verify Security Questions',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Once you have verified the security questions associated with your account you will be able to successfully upload the beneficiary.',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'ACP',
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      width: 1,
                                      color: ColorStyle.blueSKY,
                                    )
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      width: 1,
                                      color: ColorStyle.blueSKY,
                                    )
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(
                                      width: 1,
                                      color: ColorStyle.blueSKY,
                                    )
                                ),
                              ),
                            ],
                          ),
                              SizedBox(height: 10,),
                            Text(
                              'Request New OTP',
                              style: TextStyles.textStyles_12.apply(
                                  color: ColorStyle.blueSKY,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],),
                           SizedBox(width: 10,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(

                                         borderRadius: BorderRadius.circular(40),
                                         border: Border.all(
                                           width: 1,
                                           color: ColorStyle.blueSKY,
                                         )
                                     ),
                                   ),
                                   SizedBox(width: 4,),
                                   Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(

                                         borderRadius: BorderRadius.circular(40),
                                         border: Border.all(
                                           width: 1,
                                           color: ColorStyle.blueSKY,
                                         )
                                     ),
                                   ),
                                   SizedBox(width: 4,),
                                   Container(
                                     width: 50,
                                     height: 50,
                                     decoration: BoxDecoration(

                                         borderRadius: BorderRadius.circular(40),
                                         border: Border.all(
                                           width: 1,
                                           color: ColorStyle.blueSKY,
                                         )
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Text(
                                 'Enter Security Question',
                                 style: TextStyles.textStyles_12.apply(
                                     color: ColorStyle.blueSKY,
                                     fontWeightDelta: 2
                                 ),
                               ),
                             ],)
                         ],
                       ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(Icons.error,color: ColorStyle.grey,size: 40,),
                            SizedBox(width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
    'By continuing with the transfer you ',

    style: TextStyles.textStyles_14.apply(
    color: ColorStyle.secondryBlack,
    fontWeightDelta: 2
    ),
    ),
                              Text(
                                'acknowledge and confirm the ',

                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Text(
                                'applicable terms and conditions  ',

                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Text(
                                'including waiting time for newly added',

                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Text(
                                'beneficiary which may apply.',

                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              // Text(
                              //
                              //       ' acknowledge and confirm the applicable ',
                              //
                              //   style: TextStyles.textStyles_14.apply(
                              //       color: ColorStyle.secondryBlack,
                              //       fontWeightDelta: 2
                              //   ),
                              // ),
                              // Text(
                              //
                              //       ' terms and conditions including waiting ',
                              //
                              //   style: TextStyles.textStyles_14.apply(
                              //       color: ColorStyle.secondryBlack,
                              //       fontWeightDelta: 2
                              //   ),
                              // ),
                              // Text(
                              //   'By continuing with the transfer you '
                              //       ' acknowledge and confirm the applicable '
                              //       ' terms and conditions including waiting '
                              //       ' time for newly added beneficiary which may apply.',
                              //   style: TextStyles.textStyles_14.apply(
                              //       color: ColorStyle.secondryBlack,
                              //       fontWeightDelta: 2
                              //   ),
                              // ),

                            ],
                          )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(Icons.error,color: ColorStyle.grey,size: 40,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                           'Please note that international transfer ',



                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Text(
    'will be processed on international ',

                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Text(
    'business days (Monday-Friday)',

                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),



                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(Icons.error,color: ColorStyle.grey,size: 40,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                             'Transfers which fall on a holiday, ',





                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Text(
    'may be processed on the next ',

                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Text(
                                'working business day.',

                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),



                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40,),
                        GradientButtonWith(),
                        SizedBox(height: 20,),



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
