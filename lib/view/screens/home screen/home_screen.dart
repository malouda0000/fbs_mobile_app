import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/bank_card.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:fbs_mobile_app/view/widgets/shared/rectangle_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TheMianBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.kPrimaryColor,
        // onPressed: _incrementCounter,

        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TheMianBody extends StatelessWidget {
  const TheMianBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          theDefaultPadding,
        ),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
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
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    AppImages.userImage,
                  ))),
                ),
              ],
            ),
            emptySpace,

            Column(
              children: const [
                BankCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class CustomCard extends StatelessWidget {
//   const CustomCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
