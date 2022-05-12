
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import '../Styles/ImageStyle.dart';



class ListViewWithSections extends StatelessWidget {
  final String? title;
  final List? arrList;
  final Widget? widget;
  final Function(int)? onTap;

  const ListViewWithSections({Key? key, this.title = 'Title', this.arrList, this.widget, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text(
            title!,
            textAlign: TextAlign.left,
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 2,
            ),
          ),
          SizedBox(height: 10,),
          Container(height: 1, color: ColorStyle.grey,),
          SizedBox(height: 10,),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            itemCount: arrList!.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 6,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                child: widget!,
                onTap: () {
                  onTap!(index);
                },
              );
            },
          ),
          SizedBox(height: 10,),
          Container(height: 1, color: ColorStyle.grey,),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
