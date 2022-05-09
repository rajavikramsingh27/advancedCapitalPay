import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class SearchBarCustom extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final String? hint;
  final double height;


  const SearchBarCustom({Key? key,
    this.margin = const EdgeInsets.only(left: 16, right: 16),
    this.padding = const EdgeInsets.only(left: 6, right: 6),
    this.hint = "Search",
    this.height = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      margin: margin,
      padding: padding,
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: ColorStyle.grayColor,
            size: 30,
          ),
          Expanded(
              child: TextField(
            style: TextStylesPoppins.textStyles_16.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 0,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 10),
              hintText: hint,
              hintStyle: TextStylesPoppins.textStyles_16.apply(
                color: ColorStyle.grey,
                fontWeightDelta: 0,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            onChanged: (value) {},
          ))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(8)),
    );
  }
}


class SearchCustomBarHelpCenter extends StatelessWidget {
  const SearchCustomBarHelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      // margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(left: 6, right: 6),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: ColorStyle.hex('#9E9D9D'),
            size: 25,
          ),
          Expanded(
              child: TextField(
                style: TextStylesPoppins.textStyles_16.apply(
                  color: ColorStyle.secondryBlack,
                  fontWeightDelta: 0,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                  hintText: "What can we help you with?",
                  hintStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.hex('#BABABA'),
                    fontWeightDelta: 0,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                onChanged: (value) {},
              ))
        ],
      ),
      decoration: BoxDecoration(
          color: ColorStyle.hex('#E3E3E3'), borderRadius: BorderRadius.circular(4)),
    );
  }
}
