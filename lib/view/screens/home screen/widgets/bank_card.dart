import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(
              theDefaultPadding,
            ),
            // width: double.infinity,
            width: Get.width - (theDefaultPadding * 2),
            height: 220,
            decoration: BoxDecoration(
                color: AppColor.kColorThree,
                borderRadius: BorderRadius.circular(
                  theSmallPadding,
                )),
            child: Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //     color: AppColor.kPrimaryColor,
                //   ),
                // ),
                BigTitleBuilder(
                  theTitle: 'fbs bank'.toUpperCase(),
                  textColor: AppColor.kPrimaryColor,
                ),
                emptySpace,

                Row(
                  children: [
                    Text(
                      '300' + ':',
                    ),
                    emptySpace,
                    Text(
                      'sdg'.toUpperCase(),
                    ),
                  ],
                ),
                Text(
                  AppConstants.userCardNo,
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
