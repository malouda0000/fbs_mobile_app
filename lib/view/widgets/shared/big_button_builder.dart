import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';

class BigButtonBuilder extends StatelessWidget {
  String theTitle;
  void Function()? onPressed;

  BigButtonBuilder({
    Key? key,
    required this.theTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: MaterialButton(
          color: AppColor.kPrimaryColor,
          elevation: 5,
          // shape: ShapeBorder.lerp(a, b, t),

          height: 70,
          child: BigTitleBuilder(
            textColor: AppColor.kColorFour,
            theTitle: theTitle,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
