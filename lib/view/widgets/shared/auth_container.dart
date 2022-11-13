import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthContainer extends StatelessWidget {
  final Widget mainWidget;
  const AuthContainer({
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
            height: Get.width * 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      // logo container
                      // clipBehavior: Clip.hardEdge,
                      // padding: const EdgeInsets.all(5),

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: AppColor.kColorFour,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      child: const Image(
                        // fit: BoxFit.,
                        width: 110,
                        height: 110,
                        color: AppColor.kColorThree,
                        image: AssetImage(
                          AppImages.mainIcon,
                        ),
                      ),
                    ),
                    emptySpace,
                    emptySpace,
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(
                theDefaultPadding,
              ),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 300,
                  // ),

                  const SizedBox(
                    // height: Get.height * .35,
                    height: 220,
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
