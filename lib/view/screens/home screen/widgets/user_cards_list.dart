import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/modles/user_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';

class UserCardsList extends StatelessWidget {
  const UserCardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - (theDefaultPadding * 2),
      height: 220,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          BankCard(
            // first card
            bankName: CardOne.bankName,
            userEmail: CardOne.userEmail,
            cashNo: CardOne.cashNo,
            cardNo: CardOne.userCardNo,
          ),
          emptySpace,
          BankCard(
            // second card
            bankName: CardTwo.bankName,
            userEmail: CardTwo.userEmail,
            cashNo: CardTwo.cashNo,
            cardNo: CardTwo.userCardNo,
          ),
          emptySpace,
          BankCard(
            // third card
            bankName: CardThree.bankName,
            userEmail: CardThree.userEmail,
            cashNo: CardThree.cashNo,
            cardNo: CardThree.userCardNo,
          ),
        ],
      ),
    );
  }
}

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
        // color: AppColor.kColorThree,
        color: AppColor.kPrimaryColor.withOpacity(.1),
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
                ),

                Row(
                  children: [
                    Text(
                      '$cashNo : ',
                    ),
                    // emptySpace,
                    Text(
                      'sdg'.toUpperCase(),
                    ),
                  ],
                ),
                Text(
                  // AppConstants.userCardNo,
                  cardNo,
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
