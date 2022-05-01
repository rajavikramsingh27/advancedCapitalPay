import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/NewBeneficiarySummary.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'SignUp/EffectStyleSignUp.dart';

class AdvanceCapitalPayHelpCenter extends StatelessWidget {
  const AdvanceCapitalPayHelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'AdvanceCapitalPay Help Center',
                style: TextStyles.textStyles_14.apply(
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
              padding: EdgeInsets.only(left: 12,right: 12),
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


                        NewBeneficiarySummarys(),

                        SizedBox(height: 20,),
                        Text(
                          'Subject (Optional)',
                          style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFieldCustom(
                          radiusBorder: 25,
                          hintText: "Can't Access Account",
                          // prefix: Image.asset(ImageStyle.user),
                          textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                          ),
                          // colorFill: ColorStyle..withOpacity(0.5),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Attachments (Optional)',
                          style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
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
                                  borderRadius:
                                  BorderRadius.circular(20),
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
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration(ColorStyle.primaryWhite, 25),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.only(left: 20,top: 20),
                          alignment: Alignment.topCenter,
                          height: 164,
                          child: Text(
                            'Hello, could you please assist me '
                           'in getting me back access to my'
                              'account',
                            style: TextStyles.textStyles_16.apply(
                                color: ColorStyle.grey,
                                fontWeightDelta: 2
                            ),
                          ),
                          decoration: EffectStyleSignUp.decoration1(ColorStyle.primaryWhite, 25),
                        ),
                        SizedBox(height: 20,),
                        Text(
                       'Please provide as much detail as possible for your query. Our Customer Representatives will get back to you as soon as possible. You will receive a notification in your inbox once a response has been made.',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1
                          ),
                        ),
                        SizedBox(height: 20,),
                        GradientButtonWithBanks(),
                        SizedBox(height: 20,),


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
