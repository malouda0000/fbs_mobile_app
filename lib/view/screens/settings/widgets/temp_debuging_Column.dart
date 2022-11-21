import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TempDepugingColumn extends StatelessWidget {
  const TempDepugingColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.kColorTwo.withOpacity(.3),
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(theSmallPadding),
      child: Column(
        children: [
          Container(
              // color: Colors.indigo,
              // alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(
                theDefaultPadding,
              ),
              child: Column(
                children: [
                  BigButtonBuilder(
                      theTitle: 'test OnBording Screen',
                      onPressed: () {
                        Get.offAllNamed(
                          AppRoute.customOnbordingScreen,
                        );
                      }),
                  emptySpace,
                  BigButtonBuilder(
                      theTitle: 'test signIn',
                      onPressed: () {
                        Get.offAllNamed(
                          AppRoute.signInScreen,
                        );
                      }),
                  emptySpace,
                  BigButtonBuilder(theTitle: 'Empty button', onPressed: () {}),
                ],
              )),
          Container(
            height: 3,
            width: double.infinity,
            color: AppColor.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
