import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/EditIconTitle.dart';
import 'package:advanced_capital_pay/Components/InfoIconDescription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/PayingFromAccount.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';

import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import '../Controllers/NewBeneficiaryController.dart';
import '../Components/FourOptionSeries.dart';
import '../Components/InfoIconDescription.dart';
import '../Components/ComponentsTitleInputs.dart';
import 'package:notification_center/notification_center.dart';
import '../Views/TransferDetails.dart';
import '../Views/TransferSummary.dart';
import '../Views/OTPVerification.dart';
import '../Components/InfoIconDescription.dart';


class NewBeneficiarySummary extends StatelessWidget {
  NewBeneficiarySummary({Key? key}) : super(key: key);

  final controller = Get.put(NewBeneficiaryController());

  beneficiaryDetails() {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: InfoIconDescription(
            title: 'New Beneficiary Summary',
            description:
                'Protect against Fraud, Don’t fall victim to scams. Criminals will pretend to be people in which you trust, companies, government and legal figures See more'
                '\n\nAdvanceCapitalPay will never ask you to transfer any funds, criminals will pressure you. For more information visit our Fraud and Security Centre',
            textStyle: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
            descriptionStyle: TextStyles.textStyles_12
                .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ComponentsSignUp.textFieldsAccount('Last Name', false, 'Smith'),
                  Text(
                    'Beneficiary Details',
                    style: TextStyles.textStyles_18.apply(
                        color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                  ),
                  InkWell(
                    child: EditIconTitle(
                      colorBG: ColorStyle.primaryWhite,
                      colorIcon: ColorStyle.darkestBlueSignUp,
                      colorText: ColorStyle.darkestBlueSignUp,
                      radiusBorder: 3,
                      padding: EffectStyle.padding(10, 10, 3, 3),
                      heightIcon: 16,
                      fontSize: 12,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Beneficiary Type', false, 'Local Beneficiary'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.titleCountryPicker(
                      'Select Country',
                      InkWell(
                        child: EditIconTitle(
                          colorBG: ColorStyle.darkestBlueSignUp,
                          colorIcon: ColorStyle.primaryWhite,
                          colorText: ColorStyle.primaryWhite,
                          radiusBorder: 5,
                          padding: EffectStyle.padding(10, 10, 3, 3),
                          heightIcon: 16,
                          fontSize: 12,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: ComponentsTitleInputs.textFieldsAccount(
                                'Full Beneficiary Name', false, 'Anthony DC')),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          ImageStyle.Rectangle2094,
                          height: 60,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Beneficiary Account Type', false, 'Personal Account'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Beneficiary Account Type', false, 'Ant'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Beneficiary Address Line 1',
                        false,
                        '26 - 30 York Way, Kings Cross'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'City', false, 'New York'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Postal/ZIP Code', false, 'N1 9AA'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Beneficiary Contact Details',
                style: TextStyles.textStyles_18
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.titleCountryPicker(
                      'Country',
                      InkWell(
                        child: EditIconTitle(
                          colorBG: ColorStyle.darkestBlueSignUp,
                          colorIcon: ColorStyle.primaryWhite,
                          colorText: ColorStyle.primaryWhite,
                          radiusBorder: 5,
                          padding: EffectStyle.padding(10, 10, 3, 3),
                          heightIcon: 16,
                          fontSize: 12,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.titleCountryPicker(
                      'Country',
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 26,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Email Address', false, 'Anthony@gmail.com'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Beneficiary Documentation',
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                    ),
                    Text(
                      'Upload any relevant documentation relating to the beneficiary such as Identification Documents, Company Details, Invoices and more.',
                      style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ComponentsSignUp.textFieldsAccount('Last Name', false, 'Smith'),
                  Text(
                    'Beneficiary Bank Details',
                    style: TextStyles.textStyles_18.apply(
                        color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                  ),
                  InkWell(
                    child: EditIconTitle(
                      colorBG: ColorStyle.primaryWhite,
                      colorIcon: ColorStyle.darkestBlueSignUp,
                      colorText: ColorStyle.darkestBlueSignUp,
                      radiusBorder: 3,
                      padding: EffectStyle.padding(10, 10, 3, 3),
                      heightIcon: 16,
                      fontSize: 12,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Beneficiary Type', false, 'Local Beneficiary'),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Account Number',
                          style: TextStyles.textStyles_14.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 2,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        DropdownButtonCustom(
                          colorBorder: ColorStyle.secondryBlack,
                          iconWidget: Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorStyle.secondryBlack,
                          ),
                          hint: Text(
                            'Employed',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.grey,
                              fontWeightDelta: 2,
                            ),
                          ),
                          textStyle: TextStyles.textStyles_14.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 2,
                          ),
                          radiusBorder: 30,
                          height: 60,
                          padding: EdgeInsets.only(left: 16, right: 16),
                          listValue: [
                            '00117384934',
                            '0987654321',
                          ],
                          selectedValue: '00117384934',
                          onChanged: (text) {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sort Code',
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            '43',
                            style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: EffectStyle.radiusCustom(40),
                              border: Border.all(
                                color: ColorStyle.secondryBlack,
                                width: 1,
                              )),
                          padding: EffectStyle.padding(26, 26, 6, 6),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: ColorStyle.secondryBlack,
                          ),
                        ),
                        Container(
                          child: Text(
                            '56',
                            style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: EffectStyle.radiusCustom(40),
                              border: Border.all(
                                color: ColorStyle.secondryBlack,
                                width: 1,
                              )),
                          padding: EffectStyle.padding(26, 26, 6, 6),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: ColorStyle.secondryBlack,
                          ),
                        ),
                        Container(
                          child: Text(
                            '76',
                            style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: EffectStyle.radiusCustom(40),
                              border: Border.all(
                                color: ColorStyle.secondryBlack,
                                width: 1,
                              )),
                          padding: EffectStyle.padding(26, 26, 6, 6),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'Bank Address', false, 'Canada Square Canary Wharf'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount('Branch Name/Code',
                        false, 'Canada Square Canary Wharf'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount('Branch Name/Code',
                        false, 'Canada Square Canary Wharf'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.textFieldsAccount(
                        'City', false, 'Canada Square Canary Wharf'),
                    SizedBox(
                      height: 10,
                    ),
                    ComponentsTitleInputs.titleCountryPicker(
                      'Country of Bank',
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 26,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Payment Reference',
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                    ),
                    Text(
                      'This reference will automatically show when making a payment to the beneficiary but can be changed at any time.',
                      style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFieldCustom(
                      colorBoder: ColorStyle.secondryBlack,
                      hintText: 'Concert Tickets',
                      textStyle: TextStyles.textStyles_14.apply(
                        fontWeightDelta: 2,
                      ),
                      radiusBorder: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: ButtonContinueCancel(
            radiusBorder: 40,
            textFirst: 'Cancel',
            colorBGFirst: Colors.transparent,
            colorBorderFirst: ColorStyle.hex('#016ECF'),
            textStyleFirst: TextStyles.textStyles_14.apply(
              fontWeightDelta: 1,
              color: ColorStyle.hex('#016ECF'),
            ),
            onTapFirst: () {},
            textSecond: 'Continue',
            colorBGSecond: ColorStyle.hex('#016ECF'),
            colorBorderSecond: Colors.transparent,
            textStyleSecond: TextStyles.textStyles_14
                .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
            onTapSecond: () {
              controller.index.value = controller.index.value + 1;
              NotificationCenter()
                  .notify('updateAccount', data: controller.index.value);
            },
          ),
        ),
      ],
    );
  }

  titlePayingAccountList(String title, EdgeInsets padding) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: InfoIconDescription(
            title: 'New Beneficiary Summary',
            description:
                'Protect against Fraud, Don’t fall victim to scams. Criminals will pretend to be people in which you trust, companies, government and legal figures See more'
                '\n\nAdvanceCapitalPay will never ask you to transfer any funds, criminals will pressure you. For more information visit our Fraud and Security Centre',
            textStyle: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
            descriptionStyle: TextStyles.textStyles_12
                .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          child: Text(
            title,
            style: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 220,
          child: ListView.separated(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              padding: padding,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return PayingFromAccount();
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        GetBuilder(
          init: NewBeneficiaryController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(() => Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBarStyleTitle(
                  title: controller.titleAppBar.value,
                  leadingButton: IconButton(
                    icon: Image.asset(
                      ImageStyle.back_circle,
                      width: 36,
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
                body: SingleChildScrollView(
                  padding: EffectStyle.padding(0, 0, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FourOptionSeries(
                        arrIconsActivate: [
                          ImageStyle.user_1_blue,
                          ImageStyle.browserBlue,
                          ImageStyle.transferBank_Blue,
                          ImageStyle.login_blue
                        ],
                        arrIconsInActivate: [
                          ImageStyle.user_1,
                          ImageStyle.browserBlue,
                          ImageStyle.transferBank,
                          ImageStyle.login
                        ],
                        arrTitles: [
                          'Beneficiary Details',
                          'From Account',
                          'Transfer Details',
                          'Summary'
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      if (controller.index.value == 0)
                        beneficiaryDetails(),
                      if (controller.index.value == 1)
                        Column(
                          children: [
                            titlePayingAccountList('Account Selection',
                                EffectStyle.padding(16, 16, 0, 0)),
                            SizedBox(
                              height: 26,
                            ),
                            Container(
                              padding: EffectStyle.padding(16, 16, 0, 0),
                              child: ButtonContinueCancel(
                                radiusBorder: 40,
                                textFirst: 'Cancel',
                                colorBGFirst: Colors.transparent,
                                colorBorderFirst: ColorStyle.hex('#016ECF'),
                                textStyleFirst: TextStyles.textStyles_14.apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle.hex('#016ECF'),
                                ),
                                onTapFirst: () {},
                                textSecond: 'Continue',
                                colorBGSecond: ColorStyle.hex('#016ECF'),
                                colorBorderSecond: Colors.transparent,
                                textStyleSecond: TextStyles.textStyles_14.apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle.primaryWhite),
                                onTapSecond: () {
                                  controller.titleAppBar.value = 'New Transfer';
                                  controller.index.value =
                                      controller.index.value + 1;

                                  NotificationCenter().notify('updateAccount',
                                      data: controller.index.value);
                                },
                              ),
                            ),
                          ],
                        ),
                      if (controller.index.value == 2)
                        TransferDetails(
                          onTapContinue: () {
                            controller.titleAppBar.value = 'Transfer Summary';

                            controller.index.value = controller.index.value + 1;
                            NotificationCenter().notify('updateAccount',
                                data: controller.index.value);
                          },
                        ),
                      if (controller.index.value == 3)
                        TransferSummary(
                          margin: EffectStyle.padding(16, 16, 0, 0),
                        ),
                      if (controller.index.value == 3)
                      SizedBox(
                        height: 20,
                      ),
                      if (controller.index.value == 3)
                      Container(
                        padding: EffectStyle.padding(16, 16, 16, 20),
                        margin: EffectStyle.padding(16, 16, 0, 0),
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius: EffectStyle.radiusCustom(10)
                        ),
                        child: Column(
                          children: [
                            OTPVerification(),
                            InfoIconDescription(
                              padding: EffectStyle.padding(0, 0, 16, 0),
                              description: 'By continuing with the transfer you acknowledge and confirm the applicable terms and conditions including waiting time for newly added beneficiary which may apply.',
                              descriptionStyle: TextStyles.textStyles_12
                                  .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                            ),
                            InfoIconDescription(
                              padding: EffectStyle.padding(0, 0, 16, 0),
                              description: 'Please note that international transfer will be processed on international business days (Monday-Friday)',
                              descriptionStyle: TextStyles.textStyles_12
                                  .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                            ),
                            InfoIconDescription(
                              padding: EffectStyle.padding(0, 0, 16, 0),
                              description: 'Transfers which fall on a holiday, may be processed on the next working business day.',
                              descriptionStyle: TextStyles.textStyles_12
                                  .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                            ),
                            SizedBox(height: 20),
                            ButtonContinueCancel(
                              radiusBorder: 40,
                              textFirst: 'Cancel',
                              colorBGFirst: Colors.transparent,
                              colorBorderFirst: ColorStyle.hex('#016ECF'),
                              textStyleFirst: TextStyles.textStyles_14.apply(
                                fontWeightDelta: 1,
                                color: ColorStyle.hex('#016ECF'),
                              ),
                              onTapFirst: () {},
                              textSecond: 'Gernerate OTP',
                              colorBGSecond: ColorStyle.hex('#016ECF'),
                              colorBorderSecond: Colors.transparent,
                              textStyleSecond: TextStyles.textStyles_14
                                  .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
                              onTapSecond: () {

                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )));
          },
        )
      ],
    );
  }
}
