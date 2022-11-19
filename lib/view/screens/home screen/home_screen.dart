import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/data%20source/bank_services.dart';
import 'package:fbs_mobile_app/models/modles/user_cards.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/suggested_services.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/bank_card.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/services_card.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/user_cards_list.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/rectangle_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // shrinkWrap: true,
      children: <Widget>[
        // emptySpace,
        BigTitleBuilder(
          theTitle: AppConstants.userName,
          textColor: AppColor.kPrimaryColor,
        ),
        emptySpace,
        Row(
          children: [
            RectangularIcon(
              onTap: () {},
              theIcon: Icons.ring_volume_rounded,
            ),
            emptySpace,
            RectangularIcon(
              onTap: () {},
              theIcon: Icons.nightlight_rounded,
            ),
            emptySpace,
            RectangularIcon(
              onTap: () {},
              theIcon: Icons.location_on_rounded,
            ),
            emptySpace,
            const Spacer(),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.meImage,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  theSmallPadding,
                ),
              ),
            ),
          ],
        ),
        emptySpace,

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserCardsList(),
            emptySpace,
            const SuggestedServices(),
          ],
        ),
        emptySpace,
        emptySpace,
      ],
    );
  }
}
