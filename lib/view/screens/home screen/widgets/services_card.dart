import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/data%20source/bank_services.dart';
import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final int index;
  const ServicesCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width - (theDefaultPadding * 2 ),

      // width: 80,
      // height: 80,
      // color: AppColor.kPrimaryColor.withOpacity(
      //   .2,
      // ),
      decoration: BoxDecoration(
          color: AppColor.kColorThree,
          // color: AppColor.kLightPrimaryColor,
          borderRadius: BorderRadius.circular(
            theSmallPadding,
          )),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            theBankingservices[index].theIcon,
            size: 40,
          ),
          // emptySpace,
          // emptySpace,
          Text(
            theBankingservices[index].title,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// class CustomCard extends StatelessWidget {
//   const CustomCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
