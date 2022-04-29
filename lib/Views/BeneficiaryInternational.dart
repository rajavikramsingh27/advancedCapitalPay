import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/BeneficiaryInternationalController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/OTPScreen.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import 'ForgotPassword/ForgotPassword.dart';
import 'SignUp/PersonalApplication1.dart';


class BeneficiaryInternational extends StatelessWidget {
  const BeneficiaryInternational({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BeneficiaryInternationalController());
    return Stack(
      children: [
        // BackgroundImageBeneficiary(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:GetBuilder<BeneficiaryInternationalController>(
        init: BeneficiaryInternationalController(),
        initState: (state) {
        controller.reset();
        // print(controller.listSelected.value);
        },
        builder: (authController) {
        return Obx(() =>
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            InkWell(
                              child:   Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'Check My Standing Orders',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.ligthBlue,
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    SizedBox(width: 4,),
                                    Image.asset(  ImageStyle.Path1145,height: 10,
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){},
                            ),
                            InkWell(
                              child:   Container(
                                child: Row(
                                  children: [
                                    Text(
                                      'Check My Transfer',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.ligthBlue,
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    SizedBox(width: 4,),
                                    Image.asset(  ImageStyle.Path1145,height: 10,
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){},
                            )

                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'New Beneficiary',
                          style: TextStyles.textStyles_12.apply(
                            color: ColorStyle.primaryWhite,
                            // fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child:    Container(

                                height: 140,
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageStyle.me,height: 60,),
                                    Text(
                                      'Between My',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(.4),
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    Text(
                                      'Accounts',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(.4),
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.blueSKY.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              onTap: (){},
                            ),
                            InkWell(
                              child:     Container(

                                height: 140,
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageStyle.user9,height: 50,),
                                    Text(
                                      'Personal ',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    Text(
                                      'Account',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.secondryBlack.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              onTap: (){},
                            ),
                            InkWell(
                              child:  Container(

                                height: 140,
                                width: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageStyle.career,height: 50,),
                                    Text(
                                      'Business &',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(.4),
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    Text(
                                      'Charity',
                                      style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.primaryWhite.withOpacity(.4),
                                          fontWeightDelta: 2
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.blueSKY.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              onTap: (){},
                            )


                          ],
                        ),
                        SizedBox(height: 10,),

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

                    width: 373,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 20,),
                          child:      Text(
                            'Registered Beneficiaries',
                            style: TextStyles.textStyles_14.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(left: 10,right: 10),
                          // color: ColorStyle.secondryBlack,
                          height: 40,
                          child:   ListView.builder(
                            padding: EdgeInsets.only(left: 20,right: 10,),
                              shrinkWrap: true,
                              itemCount: controller.chooseBeneficiary.length,
                              // itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return  InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 4),
                                    alignment: Alignment.center,
                                    child:   Text(
                                      // 'Local Beneficiaries',

                                      controller.chooseBeneficiary[index],
                                      style: TextStyles.textStyles_10.apply(
                                          color: (controller.intAppBar.value == index)
                                              ? ColorStyle.primaryWhite.withOpacity(.4)
                                              : ColorStyle.primaryWhite,

                                          fontWeightDelta: 2
                                      ),
                                    ),
                                    width: 174,
                                    // height: 36,
                                    decoration: BoxDecoration(
                                        color: ColorStyle.blueSKY.withOpacity(.4),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  onTap: (){
                                    controller.intAppBar.value = index;
                                  },
                                );



                              }),
                        ),
                        SizedBox(height: 20,),
                        Container(child: Container(
                          // margin: EdgeInsets.only(left: 4),
                          alignment: Alignment.center,
                          child:  Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.search,color: ColorStyle.primaryWhite.withOpacity(.4),),
                              SizedBox(width: 10,),
                              Expanded(child:   TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Beneficiaries....',
                                  hintStyle: TextStyles.textStyles_12.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),)
                            ],
                          ),
                          // width: 174,
                          height: 50,
                          decoration: BoxDecoration(
                              color: ColorStyle.primaryWhite.withOpacity(.2),
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),padding: EdgeInsets.only(left: 12,right: 12),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.only(left: 20,),
                          child:    Text(
                            'Recent Beneficiaries',
                            style: TextStyles.textStyles_14.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ),

                        Container(
                               // color: ColorStyle.green,
                          height: 184,
                          child:   ListView.builder(
                              padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                              shrinkWrap: true,
                              // itemCount: controller.chooseBeneficiary.length,
                              itemCount: 2,
                              // scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return  InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    padding: EdgeInsets.only(left: 10,right: 10,),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        // SizedBox(width: 10,),
                                        Container(child: Row(children: [Image.asset(ImageStyle.Unknown,height: 50,),
                                          SizedBox(width: 20,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ICE JEWELLERS LTD',
                                                style: TextStyles.textStyles_14.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Text(
                                                'Bank Name',
                                                style: TextStyles.textStyles_8.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Text(
                                                'THE ROYAL BANK OF SCOTLAND PLC',
                                                style: TextStyles.textStyles_8.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'IBAN',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),
                                                      Text(
                                                        'GB5909023459023485793',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,

                                                    children: [
                                                      Text(
                                                        'SWIFT Code',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),
                                                      Text(
                                                        'RBOSGB2L',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),],),),
                                        Image.asset(ImageStyle.Path1148,height: 30,),

                                      ],
                                    ),
                                    // width: 174,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: ColorStyle.primaryWhite.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  onTap: (){},
                                );



                              }),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.only(left: 20,),
                          child:      Text(
                            'Local Beneficiaries - A',
                            style: TextStyles.textStyles_14.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ),
                        Container(
                          // color: ColorStyle.green,
                          height: 184,
                          child:   ListView.builder(
                              padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                              shrinkWrap: true,
                              // itemCount: controller.chooseBeneficiary.length,
                              itemCount: 2,
                              // scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return  InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    padding: EdgeInsets.only(left: 10,right: 10,),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        // SizedBox(width: 10,),
                                        Container(child: Row(children: [Image.asset(ImageStyle.Unknown,height: 50,),
                                          SizedBox(width: 20,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ICE JEWELLERS LTD',
                                                style: TextStyles.textStyles_14.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Text(
                                                'Bank Name',
                                                style: TextStyles.textStyles_8.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Text(
                                                'THE ROYAL BANK OF SCOTLAND PLC',
                                                style: TextStyles.textStyles_8.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'IBAN',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),
                                                      Text(
                                                        'GB5909023459023485793',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,

                                                    children: [
                                                      Text(
                                                        'SWIFT Code',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),
                                                      Text(
                                                        'RBOSGB2L',
                                                        style: TextStyles.textStyles_8.apply(
                                                            color: ColorStyle.primaryWhite,
                                                            fontWeightDelta: 2
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),],),),
                                        Image.asset(ImageStyle.Path1148,height: 30,),

                                      ],
                                    ),
                                    // width: 174,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: ColorStyle.primaryWhite.withOpacity(.2),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  onTap: (){},
                                );



                              }),
                        ),


                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite.withOpacity(.3),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28),
                          topLeft: Radius.circular(28),
                        )
                    ),
                  ),


                ],
              ),
            )


        );
        })


        )
      ],
    );
  }
}
