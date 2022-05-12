import 'dart:ui';

import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';

class InfoIconDescription extends StatelessWidget {
  final String? title;
  final String? description;
  final TextStyle? textStyle;
  final TextStyle? descriptionStyle;
  final EdgeInsets padding;

  const InfoIconDescription({
    Key? key, this.title, this.description,
  this.textStyle = const TextStyle(color: Colors.orange),
    this.descriptionStyle = const TextStyle(color: Colors.orange),
    this.padding = const EdgeInsets.only(
        left: 10, right: 10, top: 10, bottom: 10
    )
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
        Text(
          title!,
          style: textStyle,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
            padding: padding,
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  child: Icon(
                    Icons.info,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Text(
                    description!,
                    style: descriptionStyle,
                  ),
                ),
              ],
            ),
        )
      ],
    );
  }
}
