import 'package:fbs_mobile_app/controllers/bottom_nav_controller.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarControllerImp bottomNavBarControllerImp =
        Get.put(BottomNavBarControllerImp());
    return ConvexAppBar(
      // height: 55,
      // color: AppColor.pr,
      backgroundColor: AppColor.kPrimaryColor,
      // controller: ,
      cornerRadius: theDefaultRaduis,
      style: TabStyle.fixedCircle,
      shadowColor: AppColor.kColorTwo,
      initialActiveIndex: 2,
      activeColor: Theme.of(context).scaffoldBackgroundColor,
      // activeColor: AppColor.kColorThree,
      // color: AppColor.kColorThree,

      // curve: 20,
      // cornerRadius: 3,
      // siz
      items: const [
        TabItem(
          icon: Icons.payment_rounded,
        ),
        TabItem(
          icon: Icons.map_rounded,
        ),
        TabItem(
          icon: Icons.home_rounded,
        ),
        TabItem(
          icon: Icons.message_rounded,
        ),
        TabItem(
          icon: Icons.settings_rounded,
        ),
      ],
      onTap: (int i) {
        bottomNavBarControllerImp.changeBody(i);
      },
    );
  }
}
