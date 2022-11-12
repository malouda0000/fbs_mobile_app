import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthContainer extends StatelessWidget {
  Widget mainWidget;
  AuthContainer({
    Key? key,
    required this.mainWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -Get.width * .5,
            top: -600,
            width: Get.width * 2,
            child: Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: AppColor.kGrayColor,
                  //     blurRadius: .1,
                  //   )
                  // ],
                  color: AppColor.kPrimaryColor,
                  shape: BoxShape.circle,
                ),
                height: Get.width * 2,
                width: Get.width * 2,
                child: Stack(
                  children: [
                    Positioned(
                      // mainicon positioned
                      width: Get.width * 2,
                      bottom: 10,
                      // left: Get.width * 1,
                      child: Center(
                        child: Container(
                          // logo container
                          // clipBehavior: Clip.hardEdge,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: AppColor.kColorFour,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Image(
                            // fit: BoxFit.,
                            width: 150,
                            color: AppColor.kColorThree,
                            image: AssetImage(
                              AppImages.mainIcon,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(
                theDefaultPadding,
              ),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 300,
                  // ),

                  SizedBox(
                    height: Get.height * .35,
                  ),
                  Expanded(
                    // the body
                    child: SingleChildScrollView(child: mainWidget),
                  ),

                  // BigTitleBuilder(theTitle: 'sign in'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
