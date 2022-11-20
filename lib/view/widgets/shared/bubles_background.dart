import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class BublesBackground extends StatelessWidget {
  const BublesBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -150,
          left: -150,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor.withOpacity(.8),
              shape: BoxShape.circle,
              boxShadow: customeBoxShadowOne,
            ),
          ),
        ),
        Positioned(
          top: -400,
          right: -600,
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor.withOpacity(.4),
              shape: BoxShape.circle,
              boxShadow: customeBoxShadowThree,
            ),
          ),
        ),
        Positioned(
          bottom: -550,
          left: -200,
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor,
              shape: BoxShape.circle,
              boxShadow: customeBoxShadowThree,
            ),
          ),
        ),
        Positioned(
          bottom: -400,
          right: -600,
          child: Container(
            width: 700,
            height: 700,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor.withOpacity(.4),
              shape: BoxShape.circle,
              // boxShadow: customeBoxShadowTwo,
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: -300,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor.withOpacity(.4),
              shape: BoxShape.circle,
              boxShadow: customeBoxShadowOne,
            ),
          ),
        ),
      ],
    );
  }
}

List<BoxShadow> customeBoxShadowOne = [
  BoxShadow(
    offset: Offset(1, 1),
    blurRadius: 10,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(2, 1),
    blurRadius: 12,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 1,
    color: AppColor.kPrimaryColor,
  ),
];

List<BoxShadow> customeBoxShadowTwo = [
  BoxShadow(
    offset: Offset(1, 12),
    blurRadius: 4,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(2, 3),
    blurRadius: 3,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(0, 7),
    blurRadius: 0,
    color: AppColor.kPrimaryColor,
  ),
];

List<BoxShadow> customeBoxShadowThree = [
  BoxShadow(
    offset: Offset(-1, 1),
    blurRadius: 5,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(2, 7),
    blurRadius: .4,
    color: AppColor.kPrimaryColor,
  ),
  BoxShadow(
    offset: Offset(0, 1),
    blurRadius: 31,
    color: AppColor.kPrimaryColor,
  ),
];
