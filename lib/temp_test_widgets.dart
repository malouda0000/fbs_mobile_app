import 'package:fbs_mobile_app/view/screens/home%20screen/widgets/cards_carsou_slider.dart';
import 'package:flutter/material.dart';

class TempTestWidget extends StatelessWidget {
  const TempTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.indigo,
          child: CardCarouselSlider(),
        ),
      ),
    );
  }
}
