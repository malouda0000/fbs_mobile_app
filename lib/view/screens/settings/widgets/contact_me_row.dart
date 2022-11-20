import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/core/functions/social_functions.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/communication_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactMeRow extends StatelessWidget {
  const ContactMeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: theSmallPadding,
      child: Padding(
        padding: EdgeInsets.all(theDefaultPadding),
        child: Column(
          children: [
            BigTitleBuilder(
              // theTitle: AppLocal.feelFreeToContacMe.tr,
              theTitle: 'feel free to contac m',
              textColor: AppColor.kPrimaryColor,
            ),
            emptySpace,
            CommunicationRow(),
            emptySpace,
            emptySpace,
            GestureDetector(
              onTap: () {
                LaunchEmail();
              },
              child: BigTitleBuilder(
                theTitle: 'اطلب تطبيقا مشابها الان',
                textColor: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
