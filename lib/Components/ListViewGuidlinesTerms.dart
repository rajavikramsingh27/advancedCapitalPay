
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';

class ListViewGuidlinesTerms extends StatelessWidget {
  final String? title;
  final List? arrList;

  const ListViewGuidlinesTerms({Key? key, this.title, this.arrList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title!.isNotEmpty)
        SizedBox(height: 16,),
        if (title!.isNotEmpty)
        Text(
          title!,
          textAlign: TextAlign.left,
          style: TextStylesPoppins.textStyles_14.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(height: 10,),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: arrList!.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentsSignUp.check(),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      arrList![index],
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 0
                      ),
                    )
                )
              ],
            );
          },
        )
      ],
    );
  }
}
