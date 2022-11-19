import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        emptySpace,
        emptySpace,
        UserCard(),
        emptySpace,
        emptySpace,
        SettingCard(),
        emptySpace,
        emptySpace,
        emptySpace,
      ],
    );
  }
}

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.kPrimaryColor.withOpacity(.1),
      child: Column(children: [
        const SettingListTile(
          theLeading: Icons.person_rounded,
          theTitle: 'profile',
        ),
        const SettingListTile(
          theLeading: Icons.card_membership_rounded,
          theTitle: 'card management',
        ),
        const SettingListTile(
          theLeading: Icons.card_giftcard_rounded,
          theTitle: 'request fbs card',
        ),
        const SettingListTile(
          theLeading: Icons.wallet_rounded,
          theTitle: 'manage mobile wallet',
        ),
        const SettingListTile(
          theLeading: Icons.electric_rickshaw_rounded,
          theTitle: 'electrincity',
        ),
        const SettingListTile(
          theLeading: Icons.phone_rounded,
          theTitle: 'manage phone',
        ),
        const SettingListTile(
          theLeading: Icons.dark_mode_rounded,
          theTitle: 'dark mode',
        ),
        const SettingListTile(
          theLeading: Icons.language_rounded,
          theTitle: 'language',
        ),
        const SettingListTile(
          theLeading: Icons.info_rounded,
          theTitle: 'about and contact',
        ),
        const SettingListTile(
          theLeading: Icons.security_rounded,
          theTitle: 'security',
        ),
        const SettingListTile(
          theLeading: Icons.logout_rounded,
          theTitle: 'sign out',
        ),
        Container(
          height: 3,
          width: double.infinity,
          color: AppColor.kPrimaryColor,
        ),
      ]),
    );
  }
}

class SettingListTile extends StatelessWidget {
  final String theTitle;
  final IconData theLeading;
  const SettingListTile({
    Key? key,
    required this.theTitle,
    required this.theLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        theLeading,
        color: AppColor.kPrimaryColor,
      ),
      title: Text(
        theTitle,
        style: const TextStyle(
          color: AppColor.kPrimaryColor,
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.kPrimaryColor.withOpacity(.1),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Row(
            children: [
              // CircleAvatar(
              //   backgroundImage:  ImageProvider(),
              //   child: Image.asset(
              //     AppImages.meImage,
              //   ),
              // ),

              Container(
                margin: const EdgeInsets.all(
                  theDefaultPadding,
                ),
                width: 125,
                height: 125,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.kPrimaryColor,
                    width: 3.0,
                    strokeAlign: StrokeAlign.outside,
                    style: BorderStyle.solid,
                  ),
                  shape: BoxShape.circle,

                  // image: DecorationImage(image: )
                ),
                child: Image.asset(
                  AppImages.meImage,
                  fit: BoxFit.fill,
                ),
              ),
              emptySpace,
              emptySpace,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppConstants.userName,
                      style: TextStyle(
                          color: AppColor.kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    // Spacer(),
                    // emptySpace,
                    Text(
                      AppConstants.userPhone,
                      style: TextStyle(
                          color: AppColor.kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    // Spacer(),
                    // emptySpace,
                    Text(
                      AppConstants.userEmail,
                      style: TextStyle(
                        color: AppColor.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 3,
            width: double.infinity,
            color: AppColor.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
