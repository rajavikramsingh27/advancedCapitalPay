import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(left: 6, right: 6),
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
              hintText: "Search",
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
