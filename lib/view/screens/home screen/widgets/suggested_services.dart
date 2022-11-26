import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/data%20source/bank_services.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/services_card.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';

class SuggestedServices extends StatelessWidget {
  // final bool isUnderDev;
  const SuggestedServices({
    super.key,

    // required this.isUnderDev,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: theDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigTitleBuilder(
            theTitle: 'Suggested Services :',
            textColor: AppColor.kColorTwo,
          ),
          emptySpace,
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: theBankingservices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                // crossAxisCount: 3,

                crossAxisCount: 3,
                // childAspectRatio: .7,
                crossAxisSpacing: theDefaultPadding,
                mainAxisSpacing: theDefaultPadding,
              ),
              itemBuilder: (context, index) {
                return ServicesCard(
                  index: index,
                  // isUnderDev: ,
                );
              }),
        ],
      ),
    );
  }
}
