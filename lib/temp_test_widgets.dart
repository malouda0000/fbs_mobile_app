import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/models/data%20source/user_cards.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/cards_carsou_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TempTestWidget extends StatelessWidget {
  const TempTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BankCard(
          // second card
          bankName: CardFive.bankName,
          userEmail: CardFive.userEmail,
          cashNo: CardFive.cashNo,
          cardNo: CardFive.userCardNo,

          onTap: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
      ),
    );
  }
}
