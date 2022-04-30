import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class AccountSelection extends StatelessWidget {
  const AccountSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 8,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child:  Icon(
              Icons.info,
              size: 30,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child:  Container(
              // width: 260,
              child: Text(
                'From here you can transfer money between your own accounts. You can set up a one off transfer or standing order.',
                // controller.listApplyLeave[index],
                style: TextStyles
                    .textStyles_12
                    .apply(
                    fontWeightDelta: 3,
                    color: ColorStyle
                        .secondryBlack),
              ),
            ),),
        ],
      ),
      width: double.infinity,
      height: 86,
      decoration: BoxDecoration(
          color: ColorStyle.primaryWhite,
          borderRadius: BorderRadius.circular(10)

      ),
    );
  }
}
