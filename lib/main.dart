import 'package:advanced_capital_pay/Views/AppSettings.dart';
import 'package:advanced_capital_pay/Views/ApplePay.dart';
import 'package:advanced_capital_pay/Views/ApplicationForm.dart';
import 'package:advanced_capital_pay/Views/MainDashboard.dart';
import 'package:advanced_capital_pay/Views/PersonalApplication1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../Views/SplashScreen.dart';

// Hello
// Hello
// Hello


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: ApplePay());
  }

}
