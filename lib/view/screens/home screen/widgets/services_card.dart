import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/data%20source/bank_services.dart';
import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final int index;
  // final bool isUnderDev;
  const ServicesCard({
    Key? key,
    required this.index,
    // required this.isUnderDev,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return theBankingservices[index].isUnderDev
        ? ClipRect(
            child: Banner(
              location: BannerLocation.topEnd,
              child: TheServiceCard(index: index),
              message: "soon",
              // color: AppColor.kColorTwo,
              color: AppColor.kPrimaryColor,
              // textStyle: Theme.of(context).textTheme.bodySmall!,

              // layoutDirection: TextDirection.rtl,
            ),
          )
        : TheServiceCard(index: index);
  }
}

class TheServiceCard extends StatelessWidget {
  const TheServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.kPrimaryColor.withOpacity(.1),
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
