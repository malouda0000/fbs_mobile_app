import 'package:fbs_mobile_app/controllers/setting_controller.dart';
import 'package:fbs_mobile_app/controllers/theme_controller.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeControllerImp themeControllerImp = Get.put(ThemeControllerImp());

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(ThemeControllerImp());

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
        SettingListTile(
          theLeading: Icons.person_rounded,
          theTitle: 'profile',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.card_membership_rounded,
          theTitle: 'card management',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.card_giftcard_rounded,
          theTitle: 'request fbs card',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.wallet_rounded,
          theTitle: 'manage mobile wallet',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.electric_rickshaw_rounded,
          theTitle: 'electrincity',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.phone_rounded,
          theTitle: 'manage phone',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.dark_mode_rounded,
          theTitle: 'dark mode',
          hasTrailing: true,
          theFunc: () {
            // Get.toNamed(AppRoute.underDevelopmentScreen);
          },
          theTrailing:
              //     GetBuilder<ThemeControllerImp>(builder: (themeControllerImp) {
              //   return Switch(
              //     activeColor: AppColor.kPrimaryColor,
              //     inactiveThumbColor: AppColor.kColorTwo,
              //     value: themeControllerImp.isDarkMod,
              //     onChanged: (value) {
              //       themeControllerImp.changeDarkMod(value);
              //     },
              //   );
              // }
              // , ),

              ////////////////////////
              ///

              ObxValue(
            (data) => Switch(
              activeColor: AppColor.kPrimaryColor,
              inactiveThumbColor: AppColor.kColorTwo,
              value: themeControllerImp.isDarkMod.value,
              onChanged: (val) {
                themeControllerImp.changeThemeMode(val);
              },
            ),
            false.obs,
          ),
        ),
        SettingListTile(
          theLeading: Icons.language_rounded,
          theTitle: 'language',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.info_rounded,
          theTitle: 'about and contact',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.security_rounded,
          theTitle: 'security',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          theLeading: Icons.logout_rounded,
          theTitle: 'sign out',
          hasTrailing: false,
          theFunc: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
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
  final void Function()? theFunc;
  final bool? hasTrailing;
  Widget? theTrailing = null;

  SettingListTile({
    Key? key,
    required this.theTitle,
    required this.theLeading,
    required this.theFunc,
    required this.hasTrailing,
    this.theTrailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: theFunc,
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
      // subtitle: ,
      trailing: hasTrailing == true ? theTrailing : null,
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
