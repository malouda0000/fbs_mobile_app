import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class TheInputField extends StatelessWidget {
  IconData theIcon;
  String theHint;
  bool isPassword;
  TheInputField({
    super.key,
    required this.theIcon,
    required this.theHint,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: AppColor.kPrimaryColor,
        //   // style: BorderStyle.solid,
        // ),
        borderRadius: BorderRadius.circular(
          40,
        ),
        color: AppColor.kPrimaryColor.withOpacity(
          .2,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: isPassword
              ? Icon(
                  Icons.remove_red_eye_rounded,
                )
              : null,
          hintText: theHint,
          // hintStyle: A,
          border: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Icon(
              color: AppColor.kPrimaryColor,
              theIcon,
            ),
          ),
          fillColor: AppColor.kPrimaryColor.withOpacity(
            .2,
          ),
        ),
      ),
    );
  }
}
