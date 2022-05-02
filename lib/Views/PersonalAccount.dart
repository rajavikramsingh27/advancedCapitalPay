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
import '../Controllers/PersonalAccountController.dart';
import '../Components/FourOptionSeries.dart';
import '../Components/InfoIconDescription.dart';
import '../Components/ComponentsTitleInputs.dart';
import 'package:notification_center/notification_center.dart';
import '../Views/TransferDetails.dart';
import '../Views/TransferSummary.dart';
import '../Views/OTPVerification.dart';
import '../Components/InfoIconDescription.dart';
import '../Views/BankDetails.dart';
import '../Views/SearchByBankDetails.dart';
import '../Views/SearchByBankSwift.dart';

class PersonalAccount extends StatelessWidget {
  PersonalAccount({Key? key}) : super(key: key);

  final controller = Get.put(PersonalAccountController());

  accountSelection() {
    final padding = EffectStyle.padding(16, 16, 0, 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          child: InfoIconDescription(
            title: 'Account Selection',
            description:
                'From this page you can add a local and International Beneficiary. You can also set your preferred sending currency Which can be changed when making a payment.',
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
            'Paying From',
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
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          child: Text(
            'Paying Details',
            style: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          margin: padding,
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            children: [
              ComponentsTitleInputs.titleDropDown(
                  'Beneficiary Type',
                  true,
                  'Local Beneficiary',
                  ['Local Beneficiary', 'Internation Beneficiary']),
              ComponentsTitleInputs.titleCountryPicker(
                'Select Country',
                Icon(Icons.keyboard_arrow_down),
              ),
              ComponentsTitleInputs.titleDropDown(
                  'Beneficiary Type',
                  true,
                  'USD United States - Dollor',
                  ['USD United States - Dollor', 'United Kindom - Pounds']),
              ButtonContinueCancel(
                radiusBorder: 40,
                height: 40,
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
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }

  beneficiaryDetails() {
    final padding = EffectStyle.padding(16, 16, 0, 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          child: Text(
            'Beneficiary Details',
            style: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          margin: padding,
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoIconDescription(
                padding: EdgeInsets.zero,
                title: 'Account Selection',
                description:
                    'From this page you can add a local and International Beneficiary. You can also set your preferred sending currency Which can be changed when making a payment.',
                textStyle: TextStyles.textStyles_16
                    .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
                descriptionStyle: TextStyles.textStyles_12
                    .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: ComponentsTitleInputs.textFieldsAccount(
                          'Full Beneficiary Name', true, 'Anthony DC')),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    ImageStyle.Rectangle2094,
                    height: 60,
                  )
                ],
              ),
              ComponentsTitleInputs.titleDropDown(
                  'Beneficiary Account Type', true, 'Personal Beneficiary', [
                'Personal Beneficiary',
                'Business Beneficiary',
                'Charity Beneficiary',
              ]),
              ComponentsTitleInputs.textFieldsAccount(
                  'Beneficiary NickName', false, ''),
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 1', true, ''),
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 2', false, 'Anthony DC'),
              ComponentsTitleInputs.textFieldsAccount('City', true, ''),
              ComponentsTitleInputs.textFieldsAccount(
                  'Postal/Zip Code', true, ''),
              ComponentsTitleInputs.titleCountryPicker(
                'Select Country',
                Icon(Icons.keyboard_arrow_down),
              ),
              ComponentsTitleInputs.textFieldsAccount('Phone', true, ''),
              ComponentsTitleInputs.textFieldsAccount(
                  'E-Mail Address', true, ''),
              SizedBox(
                height: 20,
              ),
              Text(
                'Beneficiary Documentation',
                style: TextStyles.textStyles_16
                    .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
              ),
              Text(
                'Upload any relevant documentation relating to the beneficiary such as Identification Documents, Company Details, Invoices and more.',
                style: TextStyles.textStyles_12
                    .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: MediaQuery.of(Get.context!).size.width,
                decoration: BoxDecoration(
                  color: ColorStyle.hex('#016ECF'),
                  borderRadius: EffectStyle.radiusCustom(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageStyle.fileUpload,
                      height: 50,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Choose files here',
                      style: TextStyles.textStyles_13.apply(
                          fontWeightDelta: 1, color: ColorStyle.primaryWhite),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(Get.context!).size.width,
                      padding: EffectStyle.padding(16, 16, 13, 13),
                      decoration: BoxDecoration(
                        color: ColorStyle.hex('#016ECF'),
                        borderRadius: EffectStyle.radiusCustom(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImageStyle.JPFFileUpload,
                                height: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Harrison.JPG',
                                    style: TextStyles.textStyles_14.apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.primaryWhite),
                                  ),
                                  Text(
                                    'Choose files here',
                                    style: TextStyles.textStyles_12.apply(
                                        fontWeightDelta: 0,
                                        color: ColorStyle.primaryWhite),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                child: Icon(
                                  Icons.refresh,
                                  color: ColorStyle.primaryWhite,
                                  size: 30,
                                ),
                                onTap: () {},
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.cancel,
                                  color: ColorStyle.primaryWhite,
                                  size: 30,
                                ),
                                onTap: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 20,
              ),
              ButtonContinueCancel(
                radiusBorder: 40,
                height: 40,
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
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }

  beneficiaryBankDetails() {
    final padding = EffectStyle.padding(16, 16, 0, 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          child: Text(
            'Beneficiary Bank Details',
            style: TextStyles.textStyles_16
                .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: padding,
          margin: padding,
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoIconDescription(
                padding: EdgeInsets.zero,
                title: 'Account Selection',
                description:
                    'Protect against Fraud! Verify directly with the person or business that you wish to spend money too. You should never feel pressured into uploading any beneficiary or making any transaction.',
                textStyle: TextStyles.textStyles_16
                    .apply(fontWeightDelta: 2, color: ColorStyle.primaryWhite),
                descriptionStyle: TextStyles.textStyles_12
                    .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
              ),
              ButtonContinueCancel(
                radiusBorder: 40,
                height: 44,
                textFirst: 'Search by Bank Details',
                colorBGFirst: ColorStyle.hex('#016ECF'),
                colorBorderFirst: Colors.transparent,
                textStyleFirst: TextStyles.textStyles_10.apply(
                  fontWeightDelta: 1,
                  color: ColorStyle.primaryWhite,
                ),
                onTapFirst: () {
                  controller.isBankSearchType.value = 1;
                },
                textSecond: 'Search by Bank Swift',
                colorBGSecond: Colors.transparent,
                colorBorderSecond: ColorStyle.hex('#016ECF'),
                textStyleSecond: TextStyles.textStyles_12.apply(
                  fontWeightDelta: 1,
                  color: ColorStyle.hex('#016ECF'),
                ),
                onTapSecond: () {
                  controller.isBankSearchType.value = 2;
                },
              ),
              ComponentsTitleInputs.titleDropDown(
                  'Account Type',
                  true,
                  'Checking',
                  [
                    'Checking',
                    'Saving',
                  ],
                  Icon(
                    Icons.check_circle,
                    color: ColorStyle.hex('#016ECF'),
                    size: 26,
                  )),
              ComponentsTitleInputs.textFieldsAccount(
                  'Account Number', true, ''),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'Sort Code',
                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                  ),
                  Text(
                    '*',
                    style: TextStyles.textStyles_16
                        .apply(color: Colors.red, fontWeightDelta: 2),
                  ),
                ],
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
              ComponentsTitleInputs.textFieldsAccount('Bank Name', true, ''),
              ComponentsTitleInputs.textFieldsAccount('Bank Address', true, ''),
              ComponentsTitleInputs.textFieldsAccount(
                  'Branch Name/Code', true, 'Anthony DC'),
              ComponentsTitleInputs.textFieldsAccount('City', true, ''),
              ComponentsTitleInputs.titleCountryPicker(
                'Country',
                Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonContinueCancel(
                radiusBorder: 40,
                height: 40,
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
              SizedBox(
                height: 16,
              ),
            ],
          ),
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
          init: PersonalAccountController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(() => Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBarStyleTitle(
                  title: 'New Beneficiary',
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
                          ImageStyle.browserBlue,
                          ImageStyle.user_1_blue,
                          ImageStyle.transferBank_Blue,
                          ImageStyle.login_blue
                        ],
                        arrIconsInActivate: [
                          ImageStyle.browserBlue,
                          ImageStyle.user_1,
                          ImageStyle.transferBank,
                          ImageStyle.login
                        ],
                        arrTitles: [
                          'From Account',
                          'Beneficiary Details',
                          'Bank Details',
                          'Summary'
                        ],
                      ),
                      if (controller.index.value == 0) accountSelection(),
                      if (controller.index.value == 1) beneficiaryDetails(),
                      if (controller.index.value == 2 &&
                          (controller.isBankSearchType.value == 0))
                        beneficiaryBankDetails(),
                      if (controller.index.value == 3) accountSelection(),
                      if (controller.isBankSearchType.value == 1)
                        SearchByBankDetails(
                          onTapCancel: () {
                            controller.isBankSearchType.value = 0;
                          },
                          onTapSearchForBankDetails: () {
                            controller.bankName.value = 'ROYAL BANK OF SCOTLAN';
                            controller.bankCode.value = 'RBOSGB2L';
                            controller.arrTitles.value = ['RBOS', 'GB', 'London', 'XXX'];
                            controller.arrSubTitles.value = ['Bank Code', 'Country Code', 'Location', 'Branch Code'];
                            controller.arrBankDetailsTitles.value = ['Bank Name', 'Bank address', 'City', 'Country'];
                            controller.arrBankDetailsValue.value = ['Royal Bank Of Scotlan', '250 Bishopgate London, EC2M4AA', 'London', 'United Kingdom'];

                            controller.isBankSearchType.value = 3;
                          },
                        ),
                      if (controller.isBankSearchType.value == 2)
                        SearchByBankSwift(
                          onTapCancel: () {
                            controller.isBankSearchType.value = 0;
                          },
                          onTapSubmit: () {
                            controller.bankName.value = 'HSBC BANK PLC';
                            controller.bankCode.value = 'MIDLGB22123';
                            controller.arrTitles.value = ['MIDL', 'GB', 'London', 'XXX'];
                            controller.arrSubTitles.value = ['Bank Code', 'Country Code', 'Location', 'Branch Code'];
                            controller.arrBankDetailsTitles.value = ['Bank Name', 'Bank address', 'City', 'Country', 'SWIFT Code'];
                            controller.arrBankDetailsValue.value = ['Royal Bank Of Scotlan', '250 Bishopgate London, EC2M4AA', 'London', 'United Kingdom', 'MIDLGB22123'];

                            controller.isBankSearchType.value = 3;
                          },
                        ),
                      if (controller.isBankSearchType.value == 3)
                        BankDetails(
                          bankName: controller.bankName.value,
                          bankCode: controller.bankCode.value,
                          arrTitles: controller.arrTitles.value,
                          arrSubTitles: controller.arrSubTitles.value,
                          arrBankDetailsTitles: controller.arrBankDetailsTitles.value,
                          arrBankDetailsValue: controller.arrBankDetailsValue.value,

                          onTapCancel: () {
                            controller.isBankSearchType.value = 0;
                          },

                          onTapSelectBankDetails: () {
                            controller.isBankSearchType.value = 0;
                          },
                        ),
                      if (controller.index.value == 3) beneficiaryDetails(),
                      if (controller.index.value == 3) beneficiaryBankDetails(),
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
                              borderRadius: EffectStyle.radiusCustom(10)),
                          child: Column(
                            children: [
                              OTPVerification(),
                              InfoIconDescription(
                                padding: EffectStyle.padding(0, 0, 16, 0),
                                description:
                                    'By continuing with the transfer you acknowledge and confirm the applicable terms and conditions including waiting time for newly added beneficiary which may apply.',
                                descriptionStyle: TextStyles.textStyles_12
                                    .apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.secondryBlack),
                              ),
                              InfoIconDescription(
                                padding: EffectStyle.padding(0, 0, 16, 0),
                                description:
                                    'Please note that international transfer will be processed on international business days (Monday-Friday)',
                                descriptionStyle: TextStyles.textStyles_12
                                    .apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.secondryBlack),
                              ),
                              InfoIconDescription(
                                padding: EffectStyle.padding(0, 0, 16, 0),
                                description:
                                    'Transfers which fall on a holiday, may be processed on the next working business day.',
                                descriptionStyle: TextStyles.textStyles_12
                                    .apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.secondryBlack),
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
                                textStyleSecond: TextStyles.textStyles_14.apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle.primaryWhite),
                                onTapSecond: () {},
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
