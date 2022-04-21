import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import '../Utils/Global.dart';
import '../Views/BioMatric_Verification.dart';


class BioMatricAuth {
  static Future<bool> authenticateWithBiometrics() async {
    final LocalAuthentication auth = LocalAuthentication();

    try {
      final authenticated = await auth.authenticate(
        localizedReason:
            // 'Scan your fingerprint (or face or whatever) to authenticate'
            'Hello HARRISON SMITH, \n Use Face ID to login to your account',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true,
        ),
      );

      if (authenticated) {
        // Get.to(BioMatric_Verification());
      } else {
        'Not auntheticated'.showError();
      }

      return authenticated;
    } on PlatformException catch (error) {
      print(error);
      error.message!.showError();
      return false;
    }
  }

  static Future<bool> isBiometricsAvailable() async {
    final LocalAuthentication auth = LocalAuthentication();
    return await auth.canCheckBiometrics;
  }

  static checkAvailableBiometrics() async {
    final LocalAuthentication auth = LocalAuthentication();

    List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();

    if (Platform.isIOS) {
      if (availableBiometrics.contains(BiometricType.face)) {
        // Face ID.
      } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
        // Touch ID.
      }
    }
  }
}
