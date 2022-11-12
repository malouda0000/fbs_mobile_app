import 'package:fbs_mobile_app/controllers/custom_onbording_controller.dart';
import 'package:fbs_mobile_app/view/screens/custom%20onbording/widgets/onbording_page_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/sliding_controller_row.dart';

class CustomOnBordingScreen extends StatelessWidget {
  const CustomOnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: const OnBordingPageSlider(),
          ),
          const Expanded(
            // flex: 1,
            child: SlidingControllerRow(),
          )
        ],
      ),
    );
  }
}
