import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Styles/ImageStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';
import '../Styles/EffectStyle.dart';

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

class AppBarStyleStatusBar extends StatelessWidget
    implements PreferredSizeWidget {
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
class AppBarStyleAuth extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final String? title;

  const AppBarStyleAuth({Key? key, this.onTap, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(

        elevation: 0.2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          title!,
          style: TextStyles.textStyles_20.apply(
              color: ColorStyle.secondryBlack
          ),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
    shape: Border(
    bottom: BorderSide(
    color: Colors.black12,
    width: 1
    )
    ));
  }

  @override
  Size get preferredSize => new Size.fromHeight(50);
}