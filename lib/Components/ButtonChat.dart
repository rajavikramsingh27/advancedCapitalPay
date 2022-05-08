
import 'package:flutter/material.dart';

import '../Styles/ImageStyle.dart';
import 'ChatWithUs.dart';

class ButtonChat extends StatelessWidget {
  const ButtonChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        ImageStyle.chat,
        height: 30,
      ),
      onPressed: () {
        ChatWithUs.chatWithUs();
      },
    );
  }
}
