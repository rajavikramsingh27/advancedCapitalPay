import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/ListViewGuidlinesTerms.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpPersonalOriginOfWealthController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SelectFiles.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalDocumentUpload.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';




class SignUpPersonalOriginOfWealth extends StatelessWidget {
  SignUpPersonalOriginOfWealth({Key? key}) : super(key: key);
  final controller = Get.put(SignUpPersonalOriginOfWealthController());

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
            body: GetBuilder<SignUpPersonalOriginOfWealthController>(
              init: SignUpPersonalOriginOfWealthController(),
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
                      ComponentsSignUp.topProgress('62'),
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
                                    TitleStar.titleStar(
                                        'Passport Number',
                                        true
                                    ),

                                    ComponentsSignUp.title(
                                      'Origin of Wealth/Funds',
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Clients are required to provide us with detailed information where funds and wealth has come from',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Please select multiple options below if applicable which best describes where you funds and wealth come from.',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    GridView.builder(
                                        itemCount:
                                        controller.arrSelected.length,
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          mainAxisExtent: 80,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return InkWell(
                                            child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    if (controller.arrSelected[index])
                                                      ComponentsSignUp.check(),
                                                    if (!controller.arrSelected[index])
                                                      SizedBox(height: 30,),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        controller
                                                            .arrOriginOfWealth[
                                                        index],
                                                        style: TextStylesPoppins
                                                            .textStyles_12
                                                            .apply(
                                                          color: ColorStyle
                                                              .secondryBlack,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    EffectStyle.radiusCustom(10),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: ColorStyle.grey))),
                                            onTap: () {
                                              for (int i=0; i<controller.arrSelected.length; i++) {
                                                if (index == i) {
                                                  controller.arrSelected[i] = !controller.arrSelected[i];
                                                }
                                              }
                                            },
                                          );
                                        }),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    ComponentsSignUp.title(
                                      'Origin of Funds/Wealth Explanation :',
                                      true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            // labelText: 'Enter Name',
                                            // hintText: 'Enter Your Name'
                                          ),
                                        ),
                                        height: 150,
                                        decoration: EffectStyleSignUp.decoration(
                                            Colors.transparent, 4)),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    ComponentsSignUp.title(
                                        'Upload Bank Statement',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SelectFiles(
                                        colorBG: Colors.transparent,
                                        colorBorder: ColorStyle.darkestBlueSignUp
                                    ),
                                    SizedBox(
                                      height: 22,
                                    ),
                                    Text(
                                      'Uploade Documents',
                                      style: TextStylesPoppins.textStyles_16.apply(
                                        color: ColorStyle.secondryBlack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      // decoration: EffectStyleSignUp.decoration(Colors.transparent, 10)
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.3,
                                            color: ColorStyle.secondryBlack,
                                          ),
                                          borderRadius: BorderRadius.circular(4)),
                                    ),
                                    SizedBox(
                                      height: 22,
                                    ),
                                    ComponentsSignUp.title(
                                        'Additional Documentation',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SelectFiles(
                                        colorBG: Colors.transparent,
                                        colorBorder: ColorStyle.darkestBlueSignUp
                                    ),
                                    SizedBox(
                                      height: 22,
                                    ),
                                    Text(
                                      'Uploade Documents',
                                      style: TextStylesPoppins.textStyles_16.apply(
                                        color: ColorStyle.secondryBlack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.3,
                                            color: ColorStyle.secondryBlack,
                                          ),
                                          borderRadius: BorderRadius.circular(4)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Advance Capital SOF/SOW Accepted Guidelines',
                                      style: TextStylesPoppins.textStyles_16.apply(
                                        color: ColorStyle.secondryBlack,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Sale of a property',
                                      arrList: [
                                        'Sales Contract',
                                        'Signed Letter from Solicitor',
                                        'Signed Letter from Real Estate Agent (If Applicable)'
                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Generic Source of Wealth',
                                      arrList: [
                                        'Purchase and Sale of Goods/Services',
                                        'One of more recent payslips',
                                        'Copy of Recent Accounts (Self-Employed)',
                                        'Confirmation from Employer of Income',
                                        'Bank Statement outlining receipt of most recent salary payment from named employer',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Sale of Company',
                                      arrList: [
                                        'Copies of Media Coverage as Supporting documentation (if available)',
                                        'Copy of the Contract of Sale and Sight of Investment',
                                        'Signed from Solicitor',
                                        'Signed from Solicitor',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Inheritance:',
                                      arrList: [
                                        'Letter from solicitor or letter from Trustees of Estate',
                                        'Grant of probate with a copy of the will which must including the value of the Named Estate',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Geared Loan:',
                                      arrList: [
                                        'Recent Loan Statement',
                                        'Loan Agreement',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Compensation Payment',
                                      arrList: [
                                        'Letter from Solicitor',
                                        'Letter / Court order from compensation body',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Policy Claim or Maturing Investments',
                                      arrList: [
                                        'Chargeable Event Certificate',
                                        'Letter from previous Investment company in relation to the notification of the proceeds claim',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Sale of Shares or other investment',
                                      arrList: [
                                        'Signed letter outlining funds from a regulated accountant',
                                        'Confirmation from the relevant investment company',
                                        'Bank Statement showing receipt of funds by named investment company',
                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Individuals Own Policy/Company Pays Premium',
                                      arrList: [
                                        'Hardcopy of the latest annual report',
                                        'Copy of trading details or annual report from the companies website',
                                        'Copy of the companies certificate of incorporation or equivalent',
                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Lottery, betting, casino win',
                                      arrList: [
                                        'Letter from relevant organization (Betting Shops, Casino, Lottery Headquarters)',
                                        'Media coverage as supporting documents (if applicable)',
                                        'Bank statement showing funds deposited by company',
                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Receiving of a gift',
                                      arrList: [
                                        'Letter from Donor confirming details of gift',

                                      ],
                                    ),
                                    ListViewGuidlinesTerms(
                                      title: 'Other Monies',
                                      arrList: [
                                        'Appropriate Supporting Documentation',
                                        'Signed Letter detailing funds from regulated accountant',
                                      ],
                                    ),







                                    ComponentsSignUp.backContinue(
                                        'Back', () {}, 'Submit', () {
                                      Get.to(SignUpPersonalDocumentUpload());
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()),
                      ComponentsSignUp.bottomUI(),
                    ],
                  ),
                ));
              },
            )),
      ],
    );
  }
}
