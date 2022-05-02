import 'package:flutter/material.dart';
import '../Styles/ImageStyle.dart';

class BackgroundImage extends StatelessWidget {
  final String? imageName;
  const BackgroundImage({Key? key,
  this.imageName = ImageStyle.bg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName!,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}


class BackgroundImageBeneficiary extends StatelessWidget {
  final String imageName;
  const BackgroundImageBeneficiary({Key? key,
    this.imageName = ImageStyle.bg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageStyle.bgGradient,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}
