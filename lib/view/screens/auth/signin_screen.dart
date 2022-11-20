import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/view/screens/auth/widgets/auth_container.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_button_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/dont_have_acc_column.dart';
import 'package:fbs_mobile_app/view/widgets/shared/forget_pass_row.dart';
import 'package:fbs_mobile_app/view/widgets/shared/the_input_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      mainWidget: Column(
        // sign in column
        children: [
          BigTitleBuilder(
              textColor: AppColor.kPrimaryColor, theTitle: 'sign in'),
          emptySpace,
          TheInputField(
            // user email
            isPassword: false,
            theIcon: Icons.login_rounded,
            theHint: 'user email',
          ),
          emptySpace,
          TheInputField(
            // user password
            isPassword: true,
            theIcon: Icons.lock_rounded,
            theHint: 'password',
          ),
          emptySpace,
          const ForgetPasswordRow(),
          // Spacer(),
          emptySpace,
          emptySpace,
          BigButtonBuilder(
            theTitle: 'sign in',
            onPressed: () {
              Get.toNamed(AppRoute.mainScreen);
            },
          ),

          // Spacer(),

          emptySpace,

          DontHaveAccountColumn(
            firstText: 'don\'t you have account? ',
            secondText: 'Sign up form here',
            theOnTap: () {
              Get.toNamed(AppRoute.signUpScreen);
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
