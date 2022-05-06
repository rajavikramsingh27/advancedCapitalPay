import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/BeneficiaryInternationalController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/SizeStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/OTPScreen.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import 'ForgotPassword/ForgotPassword.dart';
import 'SignUp/SignUpPersonalApplication1.dart';
import '../Views/NewBeneficiarySummary.dart';
import '../Views/TransferBetweenAccount.dart';
import '../Views/StandingOrders.dart';
import '../Views/PersonalAccount.dart';


class BeneficiaryInternational extends StatelessWidget {
  const BeneficiaryInternational({Key? key}) : super(key: key);

  titleTable(String title, int itemCount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            title,
            style: TextStylesPoppins.textStyles_16.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1,
            ),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            itemCount: itemCount,
            padding: EdgeInsets.only(left: 10, right: 10, top: 16, bottom: 16),
            physics: BouncingScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 10);
            },
            itemBuilder:
                (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10
                  ),
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Row(
                        children: [
                          Image.asset(
                            ImageStyle.Unknown,
                            height: 54,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            // mainAxisAlignment:
                            // MainAxisAlignment
                            //     .center,
                            children: [
                              Text(
                                'ICE JEWELLERS LTD',
                                style: TextStylesPoppins
                                    .textStyles_14
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite,
                                    fontWeightDelta:
                                    2),
                              ),
                              Text(
                                'Bank Name',
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                  color: ColorStyle
                                      .primaryWhite,
                                  // fontWeightDelta: 2
                                ),
                              ),
                              Text(
                                'THE ROYAL BANK OF SCOTLAND PLC',
                                style: TextStylesPoppins.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              SizedBox(height: 6,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'IBAN',
                                        style: TextStylesPoppins.textStyles_10.apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          // fontWeightDelta: 2,
                                        ),
                                      ),
                                      Text(
                                        'GB5909023459023485793',
                                        style: TextStylesPoppins.textStyles_10.apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SWIFT Code',
                                        style: TextStylesPoppins.textStyles_10.apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          // fontWeightDelta: 2,
                                        ),
                                      ),
                                      Text(
                                        'RBOSGB2L',
                                        style: TextStylesPoppins.textStyles_10.apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),)
                        ],
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        ImageStyle.Path1148,
                        height: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              );
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BeneficiaryInternationalController());
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: GetBuilder<BeneficiaryInternationalController>(
                init: BeneficiaryInternationalController(),
                initState: (state) {
                  controller.reset();
                  // print(controller.listSelected.value);
                },
                builder: (authController) {
                  return Obx(() => SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 16, right: 16, top: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppBarStyleCustomBeni(
                                    leadingButton: IconButton(
                                      icon: Image.asset(
                                        ImageStyle.back_circle,
                                        height: 30,
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    ),
                                    trailingButton: IconButton(
                                      icon: Image.asset(
                                        ImageStyle.chat,
                                        height: 30,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                      'Check My Standing Orders',
                                                      style: TextStyle(
                                                        color: ColorStyle.hex('#00D6E8'),
                                                        fontFamily: TextStylesPoppins.kFontFamily,
                                                        fontSize: 12,
                                                        decorationThickness: 2,
                                                      )
                                                  ),
                                                  onTap: () {
                                                    Get.to(StandingOrders());
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Image.asset(
                                                  ImageStyle.Path1145,
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 1,
                                              width: 175,
                                              // width: double.infinity,
                                              color: ColorStyle.hex('#00D6E8'),
                                            ),
                                          ],
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                        ),
                                        onTap: () {},
                                      ),
                                      InkWell(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                    'Check My Transfer',
                                                    style: TextStyle(
                                                      color: ColorStyle.hex('#00D6E8'),
                                                      fontFamily: TextStylesPoppins.kFontFamily,
                                                      fontSize: 12,
                                                      decorationThickness: 2,
                                                    )
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Image.asset(
                                                  ImageStyle.Path1145,
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 1,
                                              width: 125,
                                              // width: double.infinity,
                                              color: ColorStyle.hex('#00D6E8'),
                                            ),
                                          ],
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                        ),
                                        onTap: () {},
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  InkWell(
                                    child: Text(
                                      'New Beneficiary',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2
                                      ),
                                    ),
                                    onTap: () {
                                      Get.to(NewBeneficiarySummary());
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(child: InkWell(
                                        child: Container(
                                          height: 140,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                ImageStyle.me,
                                                height: 60,
                                              ),
                                              SizedBox(height: 6,),
                                              Text(
                                                'Between My Accounts',
                                                style: TextStylesPoppins.textStyles_12
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite
                                                        .withOpacity(.4),
                                                    fontWeightDelta: 2),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: ColorStyle.hex('#2D6BB2').withOpacity(.4),
                                              borderRadius: BorderRadius.circular(10),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    ColorStyle.hex('#2D6BB2').withOpacity(0.5),
                                                    ColorStyle.hex('#1C93EA').withOpacity(0.5),
                                                  ]
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 2,
                                                  // spreadRadius: 6,
                                                  color: ColorStyle.hex('#18417C'),
                                                )
                                              ],
                                          ),
                                        ),
                                        onTap: () {
                                          Get.to(TransferBetweenAccount());
                                        },
                                      )),
                                      SizedBox(width: 8,),
                                      Expanded(child: InkWell(
                                        child: Container(
                                          height: 140,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(ImageStyle.bgPersonalAccount),
                                              fit: BoxFit.cover,
                                            ),
                                            color: ColorStyle.secondryBlack.withOpacity(.4),
                                            borderRadius: BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 4,
                                                // spreadRadius: 6,
                                                color: ColorStyle.hex('#0945F5'),
                                              )
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                ImageStyle.user9,
                                                height: 50,
                                              ),
                                              SizedBox(height: 6,),
                                              Text(
                                                'Personal Account',
                                                style: TextStylesPoppins.textStyles_12
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite,
                                                    fontWeightDelta: 2,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          padding: EffectStyle.padding(6, 6, 0, 0),
                                        ),
                                        onTap: () {
                                          Get.to(PersonalAccount());
                                        },
                                      )),
                                      SizedBox(width: 8,),
                                      Expanded(child: InkWell(
                                        child: Container(
                                          height: 140,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                ImageStyle.career,
                                                height: 50,
                                              ),
                                              SizedBox(height: 6,),
                                              Text(
                                                'Business & Charity',
                                                style: TextStylesPoppins.textStyles_12
                                                    .apply(
                                                    color: ColorStyle
                                                        .primaryWhite
                                                        .withOpacity(.4),
                                                    fontWeightDelta: 2),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: ColorStyle.blueSKY.withOpacity(.4),
                                              borderRadius: BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                                colors: [
                                                  ColorStyle.hex('#2D6BB2').withOpacity(0.5),
                                                  ColorStyle.hex('#1C93EA').withOpacity(0.5),
                                                ]
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 0),
                                                blurRadius: 2,
                                                // spreadRadius: 6,
                                                color: ColorStyle.hex('#18417C'),
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {},
                                      )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              height: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageStyle.bg_tride),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite.withOpacity(.3),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(28),
                                    topLeft: Radius.circular(28),
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Text(
                                      'Registered Beneficiaries',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 2),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Container(
                                    padding: EffectStyle.padding(16, 16, 0, 0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButtonCustom(
                                            text: 'Personal',
                                            textStyle: TextStylesPoppins.textStyles_14.apply(
                                                color: controller.isPersonal.value
                                                    ? ColorStyle.primaryWhite
                                                    : ColorStyle.primaryWhite
                                                    .withOpacity(0.7)),
                                            colorBG: controller.isPersonal.value
                                                ? ColorStyle.hex('#0E4AF2')
                                                : ColorStyle.hex('#0535B1'),
                                            height: 44,
                                            radiusBorder: 6,
                                            onTap: () {
                                              controller.isPersonal.value = true;
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Expanded(
                                          child: ElevatedButtonCustom(
                                            text: 'Business Profile',
                                            textStyle: TextStylesPoppins.textStyles_14.apply(
                                                color: !controller.isPersonal.value
                                                    ? ColorStyle.primaryWhite
                                                    : ColorStyle.primaryWhite
                                                    .withOpacity(0.7)),
                                            colorBG: !controller.isPersonal.value
                                                ? ColorStyle.hex('#0E4AF2')
                                                : ColorStyle.hex('#0535B1'),
                                            radiusBorder: 6,
                                            height: 44,
                                            onTap: () {
                                              controller.isPersonal.value = false;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Container(
                                      // margin: EdgeInsets.only(left: 4),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.search,
                                            color: ColorStyle.primaryWhite.withOpacity(.4),
                                            size: 40,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                'Search Beneficiaries....',
                                                hintStyle: TextStylesPoppins.textStyles_14.apply(
                                                  color: ColorStyle.primaryWhite,
                                                  fontWeightDelta: 0,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      // width: 174,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: ColorStyle.primaryWhite
                                              .withOpacity(.2),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                    ),
                                    padding: EdgeInsets.only(left: 12, right: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  titleTable('Recent Beneficiariies', 2),
                                  titleTable('International Beneficiariies -C', 2),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                }))
      ],
    );
  }
}
