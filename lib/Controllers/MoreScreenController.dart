import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/ColorStyle.dart';


class MoreScreenController extends GetxController {
  // RxList<String> arrMoreIcons = [
  //   ImageStyle.search_lightBlue,
  //   ImageStyle.account_circle_lightBlue,
  //   ImageStyle.invite_lightBlue,
  //   ImageStyle.savings_lightBlue,
  //   ImageStyle.chat_lightBlue,
  // ].obs;

  RxList<Widget> arrMoreIcons = [
    Icon(Icons.search, color: ColorStyle.ligthBlue,),
    Icon(Icons.account_circle_outlined, color: ColorStyle.ligthBlue,),
    Icon(Icons.person_add, color: ColorStyle.ligthBlue,),
    Image.asset(ImageStyle.savings_lightBlue, color: ColorStyle.ligthBlue,),
    Icon(Icons.chat, color: ColorStyle.ligthBlue,),
  ].obs;


  RxList<String> arrMoreTitle = [
    'Search',
    'My Account Details',
    'Invite',
    'Savings',
    'Live Chat',
  ].obs;

  reset() {}
}
