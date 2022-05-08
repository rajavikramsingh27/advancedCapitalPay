import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class ReturningCustomerAlreadyUsedApp extends StatelessWidget {
  const ReturningCustomerAlreadyUsedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyle(
    //         leadingButton: Image.asset(
    // ImageStyle.TopNav,
    // height: 12,
    // ),
            trailingButton: IconButton(

              icon: Image.asset(
                ImageStyle.chat,
                height: 30,
              ),
              onPressed: () {},
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 50,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(

                  'Welcome Back, ',

                  style: TextStylesPoppins.textStyles_24.apply(

                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2,

                  ),
                ),
                SizedBox(height: 8),
                Text(

                      'HARRISON SMITH,',

                  style: TextStylesPoppins.textStyles_24.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2
                  ),
                ),
                SizedBox(height: 14),
                Text(
             'Use Thumb ID to login to your account.',
                  style: TextStylesPoppins.textStyles_18.apply(
                      color: ColorStyle.grey,
                      // fontWeightDelta: 2
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    child: Image.asset(ImageStyle.lock,height: 170,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: ColorStyle.hex('#FFFFFF').withOpacity(0.4),
                      color: ColorStyle.hex('#FFFFFF').withOpacity(0.4),
                        border: Border.all(
                          width: 0.2,
                          color: ColorStyle.blueSKY,
                        ),
                      boxShadow: [
                       

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  alignment: Alignment.center,
                  child:  Text(
                    'Enter your password instead',
                    style: TextStylesPoppins.textStyles_16.apply(
                      color: ColorStyle.primaryWhite,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                TextFieldPasswordCustom(
                  prefix: Container(
                      padding: EdgeInsets.only(
                        top: 6,
                        bottom: 6,
                      ),
                      height: 30,
                      child: Image.asset(ImageStyle.lock2)),
                  hintTextStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.grey,
                  ),
                  textStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                  ),
                  colorFill: ColorStyle.hex("#236CA2").withOpacity(0.5),
                  colorSuffix: ColorStyle.primaryWhite,
                ),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Expanded(child:  InkWell(
                     child: Row(
                       children: [
                         Image.asset(
                           ImageStyle.Group1947,
                           height: 18,
                         ),
                         SizedBox(width: 10),
                         Expanded(
                           child: Text(
                             'Sign In As A Different User',
                             style: TextStylesPoppins.textStyles_10.apply(
                               color: ColorStyle.primaryWhite,
                               decoration: TextDecoration.underline,
                             ),
                           ),
                         ),

                       ],
                     ),
                     onTap: () {
                       // Get.to(ForgotPassword());
                     },
                   ),),
                    // SizedBox(width: 40),
                    Expanded(child:    InkWell(
                      child: Row(
                        children: [
                          Image.asset(
                            ImageStyle.questionMark,
                            height: 18,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Forgot Password',
                              style: TextStylesPoppins.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // Get.to(ForgotPassword());
                      },
                    ),)
                  ],
                ),
                SizedBox(height: 44),
                Center(
                  child: GradientButton(
                    text: 'Sign in',
                    onTap: () {
                      // BioMatricAuth.authenticateWithBiometrics();
                      // Get.to(OTPScreen());
                    },
                  ),
                ),
                SizedBox(height: 22),


              ],
            ),
          ),
        )
      ],
    );
  }
}
