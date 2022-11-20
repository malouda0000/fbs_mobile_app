import 'package:carousel_slider/carousel_slider.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/modles/user_cards.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCarouselSlider extends StatelessWidget {
  const CardCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: userCardsList,
      options: CarouselOptions(
        // height: 400,
        height: 220,

        // disableCenter: false,
        // padEnds: false,
        onPageChanged: (index, reason) {},

        // aspectRatio: 16 / 9,
        viewportFraction: 0.95,
        // viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 1500),
        autoPlayCurve: Curves.bounceOut,
        // enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

List<Widget> userCardsList = [
  BankCard(
    // first card
    bankName: CardOne.bankName,
    userEmail: CardOne.userEmail,
    cashNo: CardOne.cashNo,
    cardNo: CardOne.userCardNo,
  ),
  // emptySpace,
  BankCard(
    // second card
    bankName: CardTwo.bankName,
    userEmail: CardTwo.userEmail,
    cashNo: CardTwo.cashNo,
    cardNo: CardTwo.userCardNo,
  ),
  // emptySpace,
  BankCard(
    // third card
    bankName: CardThree.bankName,
    userEmail: CardThree.userEmail,
    cashNo: CardThree.cashNo,
    cardNo: CardThree.userCardNo,
  ),
];

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
      /*
       the bank card
      */

      padding: const EdgeInsets.all(
        theDefaultPadding,
      ),
      // margin: EdgeInsets.symmetric(
      //   // horizontal: theDefaultPadding,
      //   horizontal: 5,
      // ),

      // width: double.infinity,

      width: Get.width - (theDefaultPadding * 2),
      height: 220,
      decoration: BoxDecoration(
        color: AppColor.kPrimaryColor.withOpacity(.1),
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
