import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/rectangle_icon.dart';
import 'package:flutter/material.dart';

class HeaderIconsRow extends StatelessWidget {
  const HeaderIconsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: theDefaultPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // emptySpace,
          BigTitleBuilder(
            theTitle: AppConstants.userName,
            textColor: AppColor.kPrimaryColor,
          ),
          // emptySpace,
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
        ],
      ),
    );
  }
}
