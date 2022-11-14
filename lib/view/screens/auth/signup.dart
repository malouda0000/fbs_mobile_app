import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/view/widgets/shared/agree_terms_row.dart';
import 'package:fbs_mobile_app/view/widgets/shared/auth_container.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_button_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/dont_have_acc_column.dart';
import 'package:fbs_mobile_app/view/widgets/shared/the_input_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      mainWidget: Column(
        // signup column
        children: [
          BigTitleBuilder(
              textColor: AppColor.kPrimaryColor, theTitle: 'Create Account'),
          emptySpace,
          TheInputField(
            // user name
            isPassword: false,
            theIcon: Icons.person_rounded,
            theHint: 'user name',
          ),
          emptySpace,
          TheInputField(
            // user email
            isPassword: false,
            theIcon: Icons.email_rounded,
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
          TheInputField(
            // user password
            isPassword: true,
            theIcon: Icons.lock_rounded,
            theHint: 'repassword',
          ),
          emptySpace,
          const AgreeTermsRow(),
          // Spacer(),
          emptySpace,
          BigButtonBuilder(
            theTitle: 'sign up',
            onPressed: () {
              Get.toNamed(AppRoute.mainScreen);
            },
          ),
          // Spacer(),
          emptySpace,
          emptySpace,

          DontHaveAccountColumn(
            firstText: 'allredy have an account? ',
            secondText: 'Sign in form here',
            theOnTap: () {
              Get.toNamed(AppRoute.signInScreen);
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
