import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Controllers/TabbarScreenController.dart';
import '../Views/MainDashboard.dart';
import '../Views/MoreScreen.dart';


class TabbarScreen extends StatelessWidget {
  final controller = Get.put(TabbarScreenController());

  final tabs = [
    MainDashboard(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.orange,
    ),
  ];

  double iconSize = 26;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: GetBuilder(
        init: TabbarScreenController(),
        initState: (state) {},
        builder: (authController) {
          return Obx(() => Stack(
            children: [
              Scaffold(
                backgroundColor: ColorStyle.bottomNavBG,
                body: tabs[controller.selectedIndex.value],
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.selectedIndex.value,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: ColorStyle.bottomNavBG,
                  selectedItemColor: ColorStyle.primaryWhite,
                  unselectedItemColor: ColorStyle.primaryWhite,
                  selectedLabelStyle: TextStyles.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1,
                  ),
                  unselectedLabelStyle: TextStyles.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        ImageStyle.cryptocurrency_Tabbar,
                        height: iconSize,
                      ),
                      activeIcon: Image.asset(
                        ImageStyle.cryptocurrency_Tabbar,
                        height: iconSize,
                      ),
                      label: "Crypto",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        ImageStyle.menu_dots_Tabbar,
                        height: iconSize,
                      ),
                      activeIcon: Image.asset(
                        ImageStyle.menu_dots_Tabbar,
                        height: iconSize,
                      ),
                      label: "More",
                    ),
                    BottomNavigationBarItem(
                      icon: Container(),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        ImageStyle.credit_card_Tabbar,
                        height: iconSize,
                      ),
                      activeIcon: Image.asset(
                        ImageStyle.credit_card_Tabbar,
                        height: iconSize,
                      ),
                      label: "Cards",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        ImageStyle.interrogation_Tabbar,
                        height: iconSize,
                      ),
                      activeIcon: Image.asset(
                        ImageStyle.interrogation_Tabbar,
                        height: iconSize,
                      ),
                      label: "Help",
                    ),
                  ],
                  onTap: (index) {
                    controller.selectedIndex.value = index;
                    if(index == 1) {
                      MoreScreen.moreScreen();
                    }
                  },
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: MediaQuery.of(context).size.width/2-32,
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: InkWell(
                        child: Image.asset(
                          ImageStyle.middle_Image,
                          height: 64,
                        ),
                        onTap: () {
                          controller.selectedIndex.value = 2;
                        },
                      ),
                    ),
                  )
              ),
            ],
          ));
        },
      ),
    );
  }
}

