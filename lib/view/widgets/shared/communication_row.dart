import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/core/functions/social_functions.dart';
import 'package:fbs_mobile_app/view/widgets/shared/communication_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunicationRow extends StatelessWidget {
  const CommunicationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: AppColor.kColorTwo.withOpacity(.3),
      color: Theme.of(context).chipTheme.backgroundColor,

      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(theSmallPadding),
      child: Column(
        children: [
          Container(
            // color: Colors.indigo,
            // alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.all(
              theDefaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommuincationIcon(
                  theIcon: Icons.work_outline,

                  // theUrlLanching: () => LaunchFacebook(),
                  theUrlLanching: () {
                    LaunchLinkedIn();
                  },

                  // CommuincationIconTitle: AppLocal.linkedIn.tr,
                  CommuincationIconTitle: 'linkedIn',

                  // theUrlLanching: (){},
                ),
                CommuincationIcon(
                  theIcon: Icons.email_outlined,
                  theUrlLanching: () {
                    // LaunchEmail();
                    LaunchEmail();
                  },
                  // CommuincationIconTitle: AppLocal.email.tr,
                  CommuincationIconTitle: 'email',
                ),
                CommuincationIcon(
                  // CommuincationIconTitle: AppLocal.callMe.tr,
                  CommuincationIconTitle: 'callMe',
                  theIcon: Icons.call_outlined,
                  theUrlLanching: () {
                    // launchPhone();
                    LaunchPhone();
                  },
                ),
                CommuincationIcon(
                  // CommuincationIconTitle: AppLocal.myGithub.tr,
                  CommuincationIconTitle: 'myGithub',
                  theIcon: Icons.control_point,
                  theUrlLanching: () {
                    LaunchGithub();
                  },
                ),
              ],
            ),
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


// LaunchEmail() async {
//   // Uri url;

//   final mailtoUri = Uri(
//     path: 'hamam.hamza85@gmail.com',
//   );
//   print(mailtoUri); // mailto:John.Doe@example.com?subject=Example

//   if (await canLaunchUrl(mailtoUri)) {
//     await LaunchEmail();
//   } else {
//     return Get.to(() => ErrorMessageScreen());
//   }

//   ;
// }

// launchPhone() async {
//   // Uri url;

//   final mailtoUri = Uri(
//     path: 'hamam.hamza85@gmail.com',
//   );
//   print(mailtoUri); // mailto:John.Doe@example.com?subject=Example

//   if (await canLaunchUrl(mailtoUri)) {
//     await LaunchEmail();
//   } else {
//     return Get.to(() => ErrorMessageScreen());
//   }

//   ;
// }
