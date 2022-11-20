import 'package:fbs_mobile_app/view/widgets/shared/bubles_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_color.dart';
import '../../../core/constants/constants.dart';

class ErrorMessageScreen extends StatelessWidget {
  const ErrorMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BublesBackground(),
          Center(
            child: Card(
              // semanticContainer: false,
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(theDefaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // shrinkWrap: true,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.developer_mode_rounded,
                      color: AppColor.kPrimaryColor,
                      size: Get.width * .5,
                    ),
                    emptySpace,
                    emptySpace,
                    Text(
                      // AppLocal.thisPageIsUnderDevelopment.tr,

                      ' unknown \n Error ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
