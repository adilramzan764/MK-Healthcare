import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../BottomBar_Screens/DashBoard.dart';
import '../BottomBar_Screens/Menu.dart';
import '../Controllers/BottomBarCounterController.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 75,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color(0xff37474F),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Color(0xffFAB915),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    // margin: EdgeInsets.only(bottom: 5),
                    height: 42,
                    width: 50,
                    decoration: BoxDecoration(
                        color: landingPageController.tabIndex.value == 0
                            ? Color(0xffFAB915)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset("assets/data_table.svg"))),
                label: '',
                backgroundColor: Color(0xff37474F),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    // margin: EdgeInsets.only(bottom: 5),
                    height: 42,
                    width: 50,
                    decoration: BoxDecoration(
                        color: landingPageController.tabIndex.value == 1
                            ? Color(0xffFAB915)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(
                            "assets/full_stacked_bar_chart.svg"))),
                label: '',
                backgroundColor: Color(0xff37474F),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    // margin: EdgeInsets.only(bottom: 5),
                    height: 42,
                    width: 50,
                    decoration: BoxDecoration(
                        color: landingPageController.tabIndex.value == 2
                            ? Color(0xffFAB915)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset("assets/chat.svg"))),
                label: '',
                backgroundColor: Color(0xff37474F),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    // margin: EdgeInsets.only(bottom: 5),
                    height: 42,
                    width: 50,
                    decoration: BoxDecoration(
                        color: landingPageController.tabIndex.value == 3
                            ? Color(0xffFAB915)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset("assets/settings.svg"))),
                label: '',
                backgroundColor: Color(0xff37474F),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              Dashboard(),
              Menu(),
              Text("tab 3"),
              Text("tab 4"),
            ],
          )),
    ));
  }
}
