import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';



class BioMatricEnable extends StatelessWidget {
  const BioMatricEnable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          imageName: ImageStyle.bg_BioMatric,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.user_logout,
                height: 30,
              ),
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
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 80,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      ImageStyle.face_scan,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Fast and Secure access with Face ID',
                  textAlign: TextAlign.center,
                  style: TextStyles.textStyles_24.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Login to your AdvanceCapitalPay App faster with TouchID',
                  textAlign: TextAlign.center,
                  style: TextStyles.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "You can now use your Face ID stored on your device to log into the AdvanceCapitalPay app instead of using your passwor You can continue to use the app by login in using your password Please be aware that access to some feature may still require you to enter your registered password. You may enable or disable the Face ID feature ater in the settings of your AdvanceCapitlPay Account",
                  textAlign: TextAlign.center,
                  style: TextStyles.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 0,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButtonCustom(
                        text: 'No Thanks',
                        colorBG: ColorStyle.primaryWhite,
                        colorText: ColorStyle.secondryBlack,
                        onTap: () {

                        },
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: GradientButton(
                      text: 'Yes Please',
                      onTap: () {

                      },
                    )),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
