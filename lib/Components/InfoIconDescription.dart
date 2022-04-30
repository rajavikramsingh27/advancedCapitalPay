import 'dart:ui';

import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class InfoIconDescription extends StatelessWidget {
  final String? title;
  final String? description;
  final TextStyle? textStyle;
  final TextStyle? descriptionStyle;

  const InfoIconDescription({Key? key, this.title, this.description,
  this.textStyle = const TextStyle(color: Colors.orange),
    this.descriptionStyle = const TextStyle(color: Colors.orange),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: textStyle,


          // TextStyles
          //     .textStyles_14
          //     .apply(
          //     fontWeightDelta: 2,
          //     color: ColorStyle
          //         .primaryWhite),
        ),
        SizedBox(height: 10),
        Container(
            padding: EdgeInsets.only(
                left: 10, right: 10, top: 10, bottom: 10
            ),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              children: [
                Row(
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
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        description!,
                        // 'From here you can transfer money between your own accounts. You can set up a one off transfer or standing order.',
                        style: descriptionStyle,

                        // TextStyles.textStyles_12
                        //     .apply(fontWeightDelta: 3, color: ColorStyle.secondryBlack),
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
      ],
    );
  }
}
