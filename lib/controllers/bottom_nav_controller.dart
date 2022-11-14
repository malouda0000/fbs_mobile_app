import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BottomNavBarController extends GetxController {
  changeBody(int i);
}

class BottomNavBarControllerImp extends BottomNavBarController {
  // late PageController pageController;
  // TabController bottNavTapCont = 0;
  int currentBody = 2;
  List<Widget> bodyWidgestsList = const [
    // Expanded(
    //   child: Container(
    //       padding: EdgeInsets.all(
    //         theDefaultPadding,
    //       ),
    //       color: Colors.indigo,
    //       // width: 30,
    //       // height: 30,
    //       child: Temp(theTitle: '2')),
    // ),
    Temp(theTitle: '1'),
    Temp(theTitle: '2'),
    HomeScreen(),

    Temp(theTitle: '4'),
    Temp(theTitle: '5'),
  ];

  @override
  void changeBody(int i) {
    currentBody = i;
    update();
  }

  @override
  void onInit() {
    // pageController = PageController();
    super.onInit();
  }
}

class Temp extends StatelessWidget {
  final String theTitle;
  const Temp({super.key, required this.theTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(theTitle),
    );
  }
}
