import 'package:fbs_mobile_app/controllers/bottom_nav_controller.dart';
import 'package:fbs_mobile_app/view/screens/settings/settings.dart';
import 'package:fbs_mobile_app/view/widgets/shared/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavBarControllerImp());
    return Scaffold(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: GetBuilder<BottomNavBarControllerImp>(
            builder: (bottomNavBarControllerImp) {
          return bottomNavBarControllerImp
              .bodyWidgestsList[bottomNavBarControllerImp.currentBody];
          // return const Settings();
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColor.kPrimaryColor,
      //   // onPressed: _incrementCounter,

      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),

      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

// class TheMianBody extends StatelessWidget {
//   const TheMianBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         // emptySpace,
//         BigTitleBuilder(
//           theTitle: AppConstants.userName,
//           textColor: AppColor.kPrimaryColor,
//         ),
//         emptySpace,
//         Row(
//           children: [
//             RectangularIcon(
//               onTap: () {},
//               theIcon: Icons.ring_volume_rounded,
//             ),
//             emptySpace,
//             RectangularIcon(
//               onTap: () {},
//               theIcon: Icons.nightlight_rounded,
//             ),
//             emptySpace,
//             RectangularIcon(
//               onTap: () {},
//               theIcon: Icons.location_on_rounded,
//             ),
//             emptySpace,
//             const Spacer(),
//             Container(
//               width: 45,
//               height: 45,
//               decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(
//                 AppImages.userImage,
//               ))),
//             ),
//           ],
//         ),
//         emptySpace,

//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: const [
//                   BankCard(
//                     // first card
//                     bankName: CardOne.bankName,
//                     userEmail: CardOne.userEmail,
//                     cashNo: CardOne.cashNo,
//                     cardNo: CardOne.userCardNo,
//                   ),
//                   emptySpace,
//                   BankCard(
//                     // second card
//                     bankName: CardTwo.bankName,
//                     userEmail: CardTwo.userEmail,
//                     cashNo: CardTwo.cashNo,
//                     cardNo: CardTwo.userCardNo,
//                   ),
//                   emptySpace,
//                   BankCard(
//                     // third card
//                     bankName: CardThree.bankName,
//                     userEmail: CardThree.userEmail,
//                     cashNo: CardThree.cashNo,
//                     cardNo: CardThree.userCardNo,
//                   ),
//                 ],
//               ),
//             ),
//             emptySpace,
//             BigTitleBuilder(
//               theTitle: 'Suggested Services :',
//               textColor: AppColor.kPrimaryColor,
//             ),
//             emptySpace,
//             GridView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: theBankingservices.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   // crossAxisCount: 3,

//                   crossAxisCount: 3,
//                   // childAspectRatio: .7,
//                   crossAxisSpacing: theDefaultPadding,
//                   mainAxisSpacing: theDefaultPadding,
//                 ),
//                 itemBuilder: (context, index) {
//                   return ServicesCard(
//                     index: index,
//                   );
//                 }),
//           ],
//         )
//       ],
//     );
//   }
// }
