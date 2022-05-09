
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/BackgroundImage.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewCustom extends StatelessWidget {
  final String? title;
  final String? url;

  const WebViewCustom({Key? key, required this.title, required  this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          imageName: ImageStyle.tiard,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyleTitle(
            title: title,
            leadingButton: IconButton(
              icon: Image.asset(ImageStyle.back_circle, height: 30,),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          body: WebView(
            initialUrl: url,
          )
        )
      ],
    );
  }
}
