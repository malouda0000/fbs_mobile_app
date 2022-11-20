import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/core/functions/social_functions.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';

class ReservedRow extends StatelessWidget {
  const ReservedRow({Key? key}) : super(key: key);

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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigTitleBuilder(
                  theTitle: 'all rights reserved for ',
                  textColor: AppColor.kPrimaryColor,
                ),
                InkWell(
                  onTap: () {
                    LaunchLinkedIn();
                  },
                  child: BigTitleBuilder(
                    theTitle: AppConstants.userName,
                    textColor: AppColor.kColorTwo,
                  ),
                ),
              ],
            ),
          ),
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
