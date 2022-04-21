import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;

  AppBarStyle({
    Key? key,
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
        if (trailingButton != null) trailingButton!,
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

class AppBarStyleStatusBar extends StatelessWidget implements PreferredSizeWidget {
  double heightAppBar = 0;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, heightAppBar),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ));
  }
}

class AppBarStyleTitle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;
  final String? title;
  final Color? colorTitle;

  AppBarStyleTitle({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
    this.title,
    this.colorTitle = Colors.white,
  }) : super(key: key);

  double heightAppBar = 50;

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
    title: AutoSizeText(
    title!,
    maxLines: 1,
    style: TextStyles.textStyles_16.apply(
    color: colorTitle,
    fontWeightDelta: 1,
    fontSizeDelta: 2
    ),
    ),
    actions: [
    if (trailingButton != null) trailingButton!,
    SizedBox(
    width: 10,
    )
    ],
    );
  }

}



