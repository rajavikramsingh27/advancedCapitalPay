
import 'package:get/get.dart';

class SignUpPersonalDocumentUploadController extends GetxController {

  RxList<String> arrTitlePersonalAc = [
    'Account Passport Holders Copy',
    'Account Passport Proof of Address',
    'All Authorized Signatures Passport Copies (Optional)',
    'All Authorized Signatures Passport Address (Optional)',
    'Supporting Documents (Optional)',
  ].obs;

  RxList<String> arrTitleBusinessAc = [
    'Certificate of incorporation',
    'Memorandum Articles and Association',
    'Proof of Address for the comapny (Utility Bill I.E Bank Statement, Electricity, Gas or Phone Bill)',
    'Director Register/Certificate of Incumbency',
    'Passport Copy for all Directors',
    'Shareholder Register',
    'Supporting Documents'
  ].obs;

  reset() {

  }
}