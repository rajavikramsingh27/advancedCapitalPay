import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/AccountDetailsRecoveryController.dart';
import '../../../Components/ButtonCustom.dart';
import '../../../Styles/ColorStyle.dart';
import '../../../Styles/EffectStyle.dart';
import '../../../Styles/ImageStyle.dart';
import '../../../Styles/TextStyles.dart';
import '../../../Components/TextFieldCustom.dart';
import '../../SignIn.dart';

class UserIdentificationUpdated extends StatelessWidget {
  UserIdentificationUpdated({Key? key}) : super(key: key);

  final controller = Get.put(AccountDetailsRecoveryController());

  @override
  Widget build(BuildContext context) {
    textFieldsAccount(String title, String hintText) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18,
          ),
          Text(
            title,
            style: TextStylesPoppins.textStyles_16.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFieldCustom(
            colorBoder: ColorStyle.secondryBlack,
            hintText: hintText,
            textStyle: TextStylesPoppins.textStyles_14,
            radiusBorder: 30,
          ),
        ],
      );
    }

    txtTitle() {
      return Text(
        'User Identification Successfully Updated',
        textAlign: TextAlign.center,
        style: TextStylesPoppins.textStyles_20.apply(
          color: ColorStyle.secondryBlack,
          fontWeightDelta: 2,
        ),
      );
    }

    btnLoginScreen() {
      return ElevatedButtonCustom(
        width: MediaQuery.of(context).size.width,
        colorBG: ColorStyle.blueSKY,
        text: 'Login Screen',
        radiusBorder: 30,
        textStyle: TextStylesPoppins.textStyles_14
            .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
        onTap: () {
          controller.isIdentifiy.value = true;
          Get.offAll(SignIn());
        },
      );
    }

    txtDescription() {
      return Text(
        'Your password has been updated successfully. You can now login using your new password. If you encounter any problems please feel free to speak with one of our Customer Support Representatives.',
        style: TextStylesPoppins.textStyles_12
            .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
      );
    }

    imgSetPasswordSuccessfully() {
      return Image.asset(
        ImageStyle.setPasswordSuccessfully,
        width: 236,
        height: 174,
      );
    }

    warningText() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            ImageStyle.icon_material_error,
            width: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              'Dear Customer, you have successfully completed the User Identification Recovery and your User ID has been generated below.',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.darkestBlue,
                fontWeightDelta: 1,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      );
    }

    return GetBuilder(
        init: AccountDetailsRecoveryController(),
        initState: (state) {

        },
        builder: (authController) {
          return Obx(() => Container(
                child: SingleChildScrollView(
                  padding: EffectStyle.padding(30, 30, 30, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Identification Details',
                        // textAlign: TextAlign.center,
                        style: TextStylesPoppins.textStyles_20.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EffectStyle.padding(16, 16, 16, 16),
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius: EffectStyle.radiusCustom(10),
                        ),
                        child: Column(
                          children: [
                            if (controller.isIdentifiy.value)
                              txtTitle(),
                            if (controller.isIdentifiy.value)
                            SizedBox(
                              height: 16,
                            ),
                            if (!controller.isIdentifiy.value)
                            warningText(),
                            if (!controller.isIdentifiy.value)
                            textFieldsAccount(
                                'User Identification',
                                'HarrisonSmith1948@gmail.com',
                            ),
                            if (!controller.isIdentifiy.value)
                            SizedBox(
                              height: 30,
                            ),
                            imgSetPasswordSuccessfully(),
                            SizedBox(
                              height: 16,
                            ),
                            if (controller.isIdentifiy.value)
                              warningText(),
                            SizedBox(
                              height: 16,
                            ),
                            if (controller.isIdentifiy.value)
                            Text(
                              'HarrisonSmith1948@gmail.com',
                              style: TextStylesPoppins.textStyles_16.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 2,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            txtDescription(),
                            SizedBox(
                              height: 16,
                            ),
                            btnLoginScreen()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
