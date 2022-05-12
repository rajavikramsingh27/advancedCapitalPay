import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/CountryFlag.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/OTPScreen.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalApplication1.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/ForgotPassword.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyle(
            leadingButton: CountryFlag.iconFlag(),
            trailingButton: ButtonChat(),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 90,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    'Sign in',
                    style: TextStylesPoppins.textStyles_24.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 1,
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Text(
                  'E-Mail',
                  style: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                  ),
                ),
                TextFieldCustomPrefix(
                  prefix: Image.asset(ImageStyle.user),
                  textStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                  ),
                  colorFill: ColorStyle.hex("#236CA2").withOpacity(0.5),
                ),
                SizedBox(height: 26),
                Text(
                  'Password',
                  style: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                  ),
                ),
                TextFieldPasswordCustom(
                  prefix: Container(
                    padding: EdgeInsets.only(
                      top: 6,
                      bottom: 6,
                    ),
                      height: 30,
                      child: Image.asset(ImageStyle.lock)),
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
                InkWell(
                  child: Row(
                    children: [
                      Image.asset(
                        ImageStyle.questionMark,
                        height: 22,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: AutoSizeText(
                          'Forgot your Username or Password ?',
                          style: TextStylesPoppins.autoSizeText.apply(
                            color: ColorStyle.primaryWhite,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.to(ForgotPassword());
                  },
                ),
                SizedBox(height: 44),
                Center(
                  child: GradientButton(
                    text: 'Sign in',
                    onTap: () {
                      // BioMatricAuth.authenticateWithBiometrics();
                      Get.to(OTPScreen());
                    },
                  ),
                ),
                SizedBox(height: 22),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 0.6,
                        color: ColorStyle.primaryWhite,
                        margin: EdgeInsets.only(right: 6),
                      )),
                      Text(
                        'Or sign in with',
                        style: TextStylesPoppins.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: 0.6,
                        margin: EdgeInsets.only(left: 6),
                        color: ColorStyle.primaryWhite,
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Image.asset(
                          ImageStyle.google,
                          width: 80,
                          height: 60,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        child: Image.asset(
                          ImageStyle.facebook,
                          width: 80,
                          height: 60,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        child: Image.asset(
                          ImageStyle.twitter,
                          width: 80,
                          height: 60,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStylesPoppins.textStyles_12.apply(
                          color: ColorStyle.primaryWhite,
                        ),
                      ),
                      Text(
                        "Sign up here",
                        style: TextStylesPoppins.textStyles_12.apply(
                          color: ColorStyle.blueSKY,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: ColorStyle.primaryWhite,
                        size: 30,
                      )
                    ],
                  ),
                  onTap: () {
                    Get.to(SignUpPersonalApplication1());
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
