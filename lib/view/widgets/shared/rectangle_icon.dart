import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class RectangularIcon extends StatelessWidget {
  final void Function()? onTap;
  final IconData theIcon;
  const RectangularIcon({
    Key? key,
    required this.theIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        // padding: EdgeInsets.all(
        //   theDefaultPadding,
        // ),
        decoration: BoxDecoration(
          // color: AppColor.kColorThree,
          color: AppColor.kPrimaryColor.withOpacity(.1),
          // color: AppColor.kLightPrimaryColor,
          borderRadius: BorderRadius.circular(theSmallPadding),
        ),
        child: Icon(
          theIcon,
          // color: AppColor.kPrimaryColor,
        ),
      ),
    );
  }
}
