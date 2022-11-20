import 'package:fbs_mobile_app/core/constants/app_images.dart';
import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/models/modles/user_cards.dart';
import 'package:fbs_mobile_app/temp_test_widgets.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/cards_carsou_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/view/widgets/shared/big_title_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

class UserCardsList extends StatelessWidget {
  const UserCardsList({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    return 
    
    Container(
      // color: Colors.indigo,
      // width: Get.width - (theDefaultPadding * 2),
      width: Get.width,
      height: 220,
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   children: [MyCrosolSlider()],
      // ),
      child: MyCrosolSlider(),
    );

    */

    return CardCarouselSlider();
  }
}
