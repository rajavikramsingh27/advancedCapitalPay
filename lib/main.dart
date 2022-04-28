import 'package:advanced_capital_pay/Views/CurrentAccount.dart';
import 'package:advanced_capital_pay/Views/NewBeneficiary1.dart';
import 'package:advanced_capital_pay/Views/OnBoarding.dart';
import 'package:advanced_capital_pay/Views/PreferredLanguageSelection.dart';
import 'package:advanced_capital_pay/Views/SavingGoal2.dart';
import 'package:advanced_capital_pay/Views/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../Views/SplashScreen.dart';
import '../Views/TabbarScreen.dart';
import 'package:advanced_capital_pay/Views/SplashScreen.dart';

import 'Views/AccountDetails.dart';
import 'Views/BeneficiaryInternational.dart';
import 'Views/NewBeneficiary.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewBeneficiary1()
        // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
    );
  }
}

// merging...