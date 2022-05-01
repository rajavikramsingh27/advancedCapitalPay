import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class ChatWithUs extends StatelessWidget {
  const ChatWithUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar:     AppBar(

          title: Text(
            'Chat With Us',
            style: TextStyles.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 2
            ),
          ),


          leading: Icon(
             Icons.menu,
           color: ColorStyle.secondryBlack,
          ),
          actions: [
            Icon(
              Icons.arrow_upward_outlined,
              color: ColorStyle.secondryBlack,
            ),
           SizedBox(width: 20,)
          ],


        ),
        backgroundColor: ColorStyle.primaryWhite,

        body:     SingleChildScrollView(
          // padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                          child: Icon(Icons.person, color: Colors.white) ,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      height: 50,
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Customer Service Representative',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        Text(
                          'AdvanceCapitalPay Support',
                          style: TextStyles.textStyles_12.apply(
                              color: ColorStyle.grey,
                              fontWeightDelta: 2
                          ),
                        ),

                      ],
                    ),
                InkWell(child:     Icon(Icons.thumb_up_outlined, color: Colors.grey,),onTap: (){},),
               InkWell(child:      Icon(Icons.thumb_down_alt_outlined, color: Colors.grey,),onTap: (){},)
                  ],
                ),
                decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                  boxShadow: [
                BoxShadow(
                color: ColorStyle.grey.withOpacity(.4),

                  blurRadius: 10.0,
                  // spreadRadius: 2.0,
                ), //BoxShadow
  ]),
                height: 80,
              ),
              SizedBox(height: 20,),
              Container(
                   margin: EdgeInsets.only(right: 8),
                alignment: Alignment.center,
                child: Text(
                  'Hollo, I need some help with my account.',
                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2
                  ),
                ),
                decoration: BoxDecoration(
                    color: ColorStyle.secondryBlack,
                  borderRadius: BorderRadius.circular(20)

                ),
                height: 50,
                width: 300,
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 8),
                alignment: Alignment.center,
                child: Text(
                  'Chat started',
                  style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.grey,
                      fontWeightDelta: 1
                  ),
                ),

                // height: 60,
                // width: 300,
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 8),
                alignment: Alignment.center,
                child: Text(
                  'Customer Service Representative joined the chat',
                  style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.grey,
                      fontWeightDelta: 1
                  ),
                ),

                // height: 60,
                // width: 300,
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 8),
                alignment: Alignment.center,
                child: Text(
                  'Customer Service Representative',
                  style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.grey,
                      fontWeightDelta: 1
                  ),
                ),

                // height: 60,
                // width: 300,
              ),
              SizedBox(height: 40,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20,),
                  Container(

                    child: Icon(Icons.person, color: Colors.white) ,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10,),
                  Container(

                    alignment: Alignment.center,
                    child:   Text(
                      'Hi, how can we help you today?',
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack.withOpacity(.5),
                          fontWeightDelta: 1
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    height: 50,
                    width: 240,
                  ),


                ],
              ),
              SizedBox(height: 310,),
              Container(
                padding: EdgeInsets.only(left: 12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  InkWell(child:   Icon(Icons.insert_link,size: 30, ),onTap: (){},),
               SizedBox(width: 10,),
               Expanded(child:      TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   border: InputBorder.none,

                   hintText: 'Type a message here......',
                 ),
               ),),
                  InkWell(child:   Icon(Icons.send_sharp, color: ColorStyle.secondryBlack),onTap: (){},)

                  ],
                ),
                decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    boxShadow: [
                      BoxShadow(
                        color: ColorStyle.grey.withOpacity(.4),

                        blurRadius: 10.0,
                        // spreadRadius: 2.0,
                      ), //BoxShadow
                    ]),
                height: 80,
              ),

            ],
          ),

        )


    );
  }
}
