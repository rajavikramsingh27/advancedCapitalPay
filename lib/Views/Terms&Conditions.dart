import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'Terms & Conditions',
                style: TextStylesPoppins.textStyles_20.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2
                ),
              ),


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

            body:     SingleChildScrollView(
              // padding: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.only(right: 18,left: 18),
                    // width: 164,
                    // height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        SizedBox(height:  20),
                        Text(
                          '1. Documentation which applies to you'
                              ' 2. Why this agreement is important'
                              '    2.1 Communications with you'
                              '   2.2 Purpose of this agreement'
                              ' 2.3 Written Language of this agreement'
                              '  3. Your AdvanceCapitalPay Account'
                              '    3.1 Setup of your AdvanceCapitalPay Account'
                              '   3.2 Your Personal Data'
                              '3.3 How is my money protected?'
                              '3.4 Setting up and Cancelling direct debits from your <br>AdvanceCapitalPay Account'
                              '    3.5 Your AdvanceCapitalPay Card'
                              '3.6 Requesting, Receiving and Activation of your Physical or Virtual AdvanceCapitalPay Card'
                              '  3.7 Use of your AdvanceCapitalPay Physical or Virtual Card'
                              ' 3.8 Your AdvanceCapitalPay Account and Card Limitations'
                              ' 3.9 Your AdvanceCapitalPay Card Expiry'
                              '3.10 Your AdvanceCapitalPay Card Block'
                              '  3.11 Using your AdvanceCapitalPay Card for International Payments'
                              '3.12 Your rights to a refund through your AdvanceCapitalPay Card Payments'
                              '3.13 When is a payment authorized by you?'
                              '3.14 Your AdvanceCapitalPay Account Limitations'
                              '  3.15 Pay Friends Nearby'
                              '  3.16 Chargebacks'
                              '  3.17 When an amount to be deducted is not known in advance'
                              '  3.18 Receiving and Instructing Local/International Payments to and from your'
                              '3.19 Refusal of Payment Instruction'
                              ' 3.20 My AdvanceCapitalPay Card has been stolen, lost, damaged and/or someone has taken from my AdvanceCapitalPay Account'
                              '3.21 What are the applicable fees?'
                              '3.22 How do I check my AdvanceCapitalPay account balance?'
                              '3.23 Monthly Account Fee'
                              ' 3.24 What happens when I upgrade/downgrade my AdvanceCapitalPay plan?'
                              " 3.25 What happens if I've sent a payment to the wrong details/network or beneficiary?"
                              ' 3.26 When might an AdvanceCapitalPay customer representatives contact me?'
                              '   3.27 How to Suspend or Close your AdvanceCapitalPay Account'
                              '   3.28 Accessing your money after the closure of your AdvanceCapitalPay Account'
                              '    3.29 Immediate suspension/closure of your AdvanceCapitalPay Account and/or'
                              '   4. Starting and Termination of this agreement'
                              '4.1 When can this agreement be terminated?'
                              ' 4.2 What happens to your AdvanceCapitalPay Account when this agreement is terminated?'
                              '    4.3 When can AdvanceCapitalPay end this agreement?'
                              ' 5. Further Applicable Legal Parts'
                              ' 5.1 What are you responsible for?'
                              '  5.2 When we make changes to this agreement?'
                              ' 6. How do I get in contact with you?'
                              '  6.1 How can I make a complaint?',
                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.ligthBlue,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(

                              ' Advance Capital Limited, Trading as Advance Capital Pay '
                              " ('Advance','Capital', 'Capitals', 'we', 'our' or 'us') "
    ' Composed of multiple legal entities, including but not limited to, Advance Capital Limited '
                                  'with the registration number.378870 and The Advance Capital SPC '
                                  'Fund with the registration number.331136 registered and governed under '
                                  'the laws of the Cayman Islands and with the Cayman Islands Monetary Authority '
                                  '(CIMA) registration number: 1922955. Legal Entities registered at the offices of Floor 4, '
                                  'Willow House, Cricket Square, Grand Cayman, KY1-9010, Cayman Islands. AdvanceCapitalPay'
                                  ' enables on-boarded clients the ability to manage fiat and cryptocurrency internationally, including s'
                                  'pending online through virtual/debit cards, sending and receiving money abroad through our '
                                  'state-of-the-art application which supports increasing KYC and AML regulatory conformities. '
                                  'Advance Capital provides services globally and is dedicated to ensuring that we have zero involvement in '
                                  'anyway towards human trafficking and/or modern slavery. We take any suspicious or reports very seriously as these '
                                  'offences are not only a crime but a violation of fundamental human rights. We will not deal or '
                                  'support any business which has knowingly been involved or has been convicted of human trafficking '
                                  'and/or modern slavery. Advance Capital This statement was made in accordance with the reporting '
                                  'requirements of the UK Modern Slavery Act 2015. It is important for you to know and understand how y'
                                  'our account works, you can contact us any time with any questions which you have including the rights to '
                                  '0request a copy of these terms and conditions through the AdvanceCapitalPay app. You may find useful info'
                                  'rmation and frequently asked questions through our Help Centre, its important to know that any information '
                                  'within the Help Centre doesnt form part of our agreement this you.',

                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(

                          ' 1. Documentation which applies to you: This agreement and'
    ' additional documentation outlined below, all apply to the use of any of our services by you.,',

                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(


                          ' (I) Advance Capitals Cookie Policy which outlines details of the "Cookies" on our website. (II) Advance Capitals Customer Agreement which outlines terms and conditions for services we provide you with (III) Advance Capitals Electronic Disclosures and consent which outlines terms and conditions when facial verification and eye retina scans are taken of you. (IV) Advance Capitals Privacy Policy which outlines the terms of how we collect and process personal data about you, provided to us or obtained by us. Using Advance Capitals services you consent to such processing and will always provide us with accurate information and data. You also agree to inform Advance Capital, or where applicable its affiliates, of any changes to information or data provided within at least 14 business days to Complaince@AdvanceCapitalpay.com (V) Advance Capitals Acceptable Use policy which outlines acceptable uses, prohibited activities and users of our services. (VI) Advance Capitals GDPR policy which outlines our obligations and practices for meeting compliance requirements for data regulations. (VIII) Advance Capitals Terms and Conditions which outlines the legal agreement between us and you for the use of any of our services. (IX) Advance Capitals Global Human Rights Policy (X) Advance Capitals Modern Slavery Act Statement',

                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(


                           '2. Why this agreement is important',
                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(


                          'Advance Capital means: (I) The Advance Capital SPC Fund; or (II) Advance Capital Limited, registered with the Cayman Islands Monetary Authority (CIMA) registration number: 1922966 The Advance Capital SPC Fund, is an SPC fund with Segregated Portfolios registered and governed by the laws of the Cayman Islands with its registered offices at Floor 4, Willow House, Cricket Square, Grand Cayman, KY1-9010, Cayman Islands AdvanceCapitalPay, trading as Advance Capital Limited is registered and governed by the laws of the Cayman Islands with the registration number 378870 with its registered address at Floor 4, Willow House, Cricket Square, Grand Cayman, KY1-9010, Cayman Islands. This document outlines our terms and conditions for your AdvanceCapitalPay Personal Account (your account), your AdvanceCapitalPay Card and related services. These terms and conditions, your on-boarding application along with our Privacy Policy, Limits and Fees page and any other terms and conditions that apply to our services, form a legal binding agreement "agreement", or the "terms" between;',
                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),
                        Text(

                                 '> You, the Advance Capital Account Holder and Authorized Signature(s); and'

                                     '> Us, Advance Capital Limited'

'   It is important for you to know and understand how your account works, you can contact us any time with any questions which you have including the rights to request a copy of these terms and conditions through the AdvanceCapitalPay app. You may find useful information and frequently asked questions through our Help Centre, its important to know that any information within the Help Centre doesnt form part of our agreement this you.'
'   2.1 Communications with you We will communicate with you in regards to any notifications or other information relating to your AdvanceCapitalPay account by, SMS, E-mail or through your AdvanceCapitalPay app. We advise that the number and e-mail in which you provide is accurate, updated and accessible at all times in the event that we dont and/or cant contact you through your AdvanceCapitalPay Account. We also ask and require you to make, inform us, or where applicable our affiliates, of any changes to information or data within at least fourteen (14) business days which your details can be updated through your AdvanceCapitalPay app or emailing Complaince@AdvanceCapitalpay.com. We advise you to always keep your device updated with the latest software updates for your device and the latest version of the AdvanceCapitalPay app as and when available in order to help keep your account secure. As per our legal and regulatory conformities which we strictly adhere to, we may from time to time request additional information and documentation about you and/or in relation to the use of any of our services, we ask that this information is provided back to us as soon as possible from being requested in order to not cause any problems and/or further problems with',

                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  20),


                        SizedBox(height:  40),


                      ],
                    ),
                    decoration: BoxDecoration(
                      // color: ColorStyle.primaryWhite,
                      borderRadius: BorderRadius.circular(5),
                  color: ColorStyle.primaryWhite
                    ),
                  ),





                ],
              ),
            )


        )
      ],
    );
  }
}
