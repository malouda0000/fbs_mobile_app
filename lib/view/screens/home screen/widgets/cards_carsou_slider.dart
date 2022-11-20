import 'package:carousel_slider/carousel_slider.dart';
import 'package:fbs_mobile_app/controllers/home_controller.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/data%20source/user_cards.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCarouselSlider extends StatelessWidget {
  const CardCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenControllerImp homeScreenControllerImp =
        Get.put(HomeScreenControllerImp());
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        CarouselSlider(
          items: userCardsList,
          options: CarouselOptions(
            // height: 400,
            height: 220,

            // disableCenter: false,
            // padEnds: false,
            onPageChanged: (index, reason) {
              homeScreenControllerImp.carouselSliderChanged(index);
            },

            // aspectRatio: 16 / 9,
            viewportFraction: 0.95,
            // viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 1500),
            autoPlayCurve: Curves.ease,
            // enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
        ),
        emptySpace,
        // emptySpace,
        CarouslSlidingDots(),
      ],
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
  BankCard(
    // first card
    bankName: CardFour.bankName,
    userEmail: CardFour.userEmail,
    cashNo: CardFour.cashNo,
    cardNo: CardFour.userCardNo,
  ),
  // emptySpace,
  BankCard(
    // second card
    bankName: CardFive.bankName,
    userEmail: CardFive.userEmail,
    cashNo: CardFive.cashNo,
    cardNo: CardFive.userCardNo,
  ),
  // emptySpace,
  BankCard(
    // third card
    bankName: CardSix.bankName,
    userEmail: CardSix.userEmail,
    cashNo: CardSix.cashNo,
    cardNo: CardSix.userCardNo,
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

class CarouslSlidingDots extends StatelessWidget {
  const CarouslSlidingDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (homeScreenControllerImp) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              userCardsList.length,
              (index) {
                return AnimatedContainer(
                  duration: Duration(
                    milliseconds: 900,
                  ),
                  width: homeScreenControllerImp.carousIndex == index ? 20 : 6,
                  height: 6,
                  margin: const EdgeInsets.all(
                    // theDefaultPadding,

                    2,
                  ),
                  decoration: BoxDecoration(
                      color: AppColor.kPrimaryColor,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(15)),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
