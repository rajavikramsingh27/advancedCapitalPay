import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpPersonalDocumentUploadController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Utils/Constants.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SelectFiles.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalFacialVerification.dart';


import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignUpPersonalDocumentUpload extends StatelessWidget {
  SignUpPersonalDocumentUpload({Key? key}) : super(key: key);

  final controller = Get.put(SignUpPersonalDocumentUploadController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.bg_1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body: GetBuilder<SignUpPersonalDocumentUploadController>(
              init: SignUpPersonalDocumentUploadController(),
              initState: (state) {
                controller.reset();
              },
              builder: (auth) {
                return Obx(()=>SingleChildScrollView(
                  padding: EffectStyle.padding(16, 16, 0, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageStyle.application,
                        width: MediaQuery.of(context).size.width,
                        // fit: BoxFit.fill,
                        // height: heightAppBar,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ComponentsSignUp.topProgress('82'),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: Text(
                                    'ACFVC8JTJ',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  width: 102,
                                  height: 43,
                                  decoration: EffectStyleSignUp.decoration(
                                      ColorStyle.darkestBlueSignUp)),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: EffectStyle.padding(16, 16, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Document Upload',
                                      style: TextStylesPoppins.textStyles_22.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Upload the relevant Compliance Documents Below',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    ListView.separated(
                                        shrinkWrap: true,
                                        itemCount: isPrivate.value ? controller.arrTitlePersonalAc.length : controller.arrTitleBusinessAc.length,
                                        physics: NeverScrollableScrollPhysics(),
                                        separatorBuilder: (context, index) {
                                          return Container(
                                            margin: EffectStyle.padding(0, 0, 8, 16),
                                            color: Colors.black12,
                                            height: 1,
                                          );
                                        },
                                        itemBuilder: (context, index) {
                                          return Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Documentation',
                                                style: TextStylesPoppins.textStyles_14.apply(
                                                  color: ColorStyle.blueLight,
                                                  fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),

                                              TitleStar.titleStar(
                                                  isPrivate.value ? controller.arrTitlePersonalAc[index] : controller.arrTitleBusinessAc[index],
                                                  true, 16, FontWeight.w500
                                              ),

                                              SizedBox(
                                                height: 6,
                                              ),
                                              Text(
                                                'Upload Documents',
                                                style: TextStylesPoppins.textStyles_14.apply(
                                                  color: ColorStyle.secondryBlack,
                                                  fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                              SelectFiles(
                                                  colorBG: Colors.transparent,
                                                  colorBorder: ColorStyle.darkestBlueSignUp
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Upload Documents',
                                                style: TextStylesPoppins.textStyles_14.apply(
                                                  color: ColorStyle.secondryBlack,
                                                  fontWeightDelta: 1,
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ComponentsSignUp.backContinue(
                                        'Back to site', () {}, 'Continue', () {
                                      Get.to(SignUpPersonalFacialVerification());
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()),
                      SizedBox(
                        height: 30,
                      ),
                      ComponentsSignUp.bottomUI(),
                    ],
                  ),
                ));
              },
            )
        ),
      ],
    );
  }
}
