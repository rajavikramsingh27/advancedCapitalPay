import 'package:advanced_capital_pay/Views/InboxMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'SignUp/EffectStyleSignUp.dart';
import '../Components/InfoIconDescription.dart';
import '../Components/ComponentsTitleInputs.dart';
import '../../../Components/ButtonChat.dart';
class AdvanceCapitalPayHelpCenter extends StatelessWidget {
  const AdvanceCapitalPayHelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'AdvanceCapitalPay Help Center',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStylesPoppins.textStyles_14
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
              ),
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              trailingButton: ButtonChat(),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InfoIconDescription(
                          padding: EffectStyle.padding(0, 0, 16, 0),
                          description: 'We aim to provide a response within 24 hours if your matter is urgent please send us a message via the Live Support Chat. You can provide as much detail as possible including any screenshots or attachments which you may have. Information provided within the messages center is directly sent to our Customer Support Representatives.',
                          descriptionStyle: TextStylesPoppins.textStyles_12
                              .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                        ),
                        ComponentsTitleInputs.textFieldsAccount('Subject (Optional)', false, "Can't Access Account"),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Attachments (Optional)',
                          style: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EffectStyle.padding(0, 0, 12, 12),
                          decoration: BoxDecoration(
                            borderRadius: EffectStyle.radiusCustom(40),
                            border: Border.all(
                              color: ColorStyle.darkestBlueSignUp,
                              width: 1,
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.add,
                                  size: 18,
                                  color: ColorStyle.darkestBlueSignUp,
                                ),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1.8,
                                    color: ColorStyle.darkestBlueSignUp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add Files or Drop Files Here',
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextField(
                          maxLines: 6,
                          style: TextStylesPoppins.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: EffectStyle.radiusCustom(16),
                              borderSide: BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            contentPadding: EdgeInsets.only(left: 16, right: 16, top: 16),
                            hintText: 'Hello, could you please assist me in getting me back access to my account',
                            hintStyle: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.grey,
                                fontWeightDelta: 1),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Please provide as much detail as possible for your query. Our Customer Representatives will get back to you as soon as possible. You will receive a notification in your inbox once a response has been made.',
                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ButtonContinueCancel(
                          radiusBorder: 40,
                          height: 44,
                          textFirst:'Back to Help Center',
                          colorBGFirst:Colors.transparent,
                          colorBorderFirst:ColorStyle.hex('#016ECF'),
                          textStyleFirst: TextStylesPoppins.textStyles_12.apply(
                            fontWeightDelta: 1,
                            color: ColorStyle.hex('#016ECF'),
                          ),
                          onTapFirst: () {

                          },
                          textSecond:'Submit Message',
                          colorBGSecond: ColorStyle.hex('#016ECF'),
                          colorBorderSecond: Colors.transparent,
                          textStyleSecond: TextStylesPoppins.textStyles_12.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.primaryWhite
                          ),
                          onTapSecond: () {
                            Get.to(InboxMessage());
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorStyle.primaryWhite),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
