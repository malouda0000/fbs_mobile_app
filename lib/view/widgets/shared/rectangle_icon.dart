import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class RectangularIcon extends StatelessWidget {
  void Function()? onTap;
  IconData theIcon;
  RectangularIcon({
    Key? key,
    required this.theIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        padding: EdgeInsets.all(
          theDefaultPadding,
        ),
        decoration: BoxDecoration(
          color: AppColor.kColorThree,
          borderRadius: BorderRadius.circular(theSmallPadding),
        ),
        child: Icon(
          theIcon,
          color: AppColor.kPrimaryColor,
        ),
      ),
    );
  }
}
