import 'package:fbs_mobile_app/core/constants/constants.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/cards_carsou_slider.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/header_icons_row.dart';
import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/suggested_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // shrinkWrap: true,
      children: <Widget>[
        const HeaderIconsRow(),
        emptySpace,
        // const UserCardsList(),
        const CardCarouselSlider(),
        // emptySpace,
        const SuggestedServices(),
        emptySpace,
        emptySpace,
      ],
    );
  }
}
