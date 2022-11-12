import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class DontHaveAccountColumn extends StatelessWidget {
  String firstText, secondText;
  void Function()? theOnTap;
  DontHaveAccountColumn({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.theOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            color: AppColor.kColorTwo,
          ),
        ),
        GestureDetector(
          onTap: theOnTap,
          child: Text(
            secondText,
            style: TextStyle(
              color: AppColor.kPrimaryColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
