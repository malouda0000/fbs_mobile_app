import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankCard extends StatelessWidget {
  final String bankName, userEmail, cashNo, cardNo;
  const BankCard(
      {super.key,
      required this.bankName,
      required this.userEmail,
      required this.cashNo,
      required this.cardNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      // the bank card
      padding: const EdgeInsets.all(
        theDefaultPadding,
      ),
      // width: double.infinity,
      width: Get.width - (theDefaultPadding * 2),
      height: 220,
      decoration: BoxDecoration(
        color: AppColor.kColorThree,
        // color: AppColor.kLightPrimaryColor,
        borderRadius: BorderRadius.circular(
          theSmallPadding,
        ),
      ),
      child: Row(
        children: [
          Expanded(
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
                  theTitle: bankName.toUpperCase(),
                  textColor: AppColor.kPrimaryColor,
                ),
                // emptySpace,
                Text(
                  userEmail,
                  style: TextStyle(
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),

                Row(
                  children: [
                    Text(
                      '$cashNo : ',
                      style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),

                    // emptySpace,
                    Text(
                      'sdg'.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ],
                ),
                Text(
                  // AppConstants.userCardNo,
                  cardNo,

                  style: TextStyle(
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppImages.moneyIcon,
                // color: AppColor.kPrimaryColor,
                color: Theme.of(context).iconTheme.color,
                width: 70,
                // alignment: Alignment.bottom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
