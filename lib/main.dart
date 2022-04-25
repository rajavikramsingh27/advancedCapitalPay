
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Views/SplashScreen.dart';

// Hello

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const SplashScreen());
}

