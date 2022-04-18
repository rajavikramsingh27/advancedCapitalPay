import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;

  AppBarStyle({Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,
      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: Image.asset(
        ImageStyle.logo_white,
        height: 52,
      ),
      actions: [
        if (trailingButton != null)
          trailingButton!,
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
