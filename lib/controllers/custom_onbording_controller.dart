import 'package:fbs_mobile_app/get_pages.dart';
import 'package:fbs_mobile_app/models/data%20source/custom_onbording.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CustomOnBordingController extends GetxController {
  next();

  skip();

  onPageChanged(int index);
}

class OnBordingControllerImp extends CustomOnBordingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage >= mainCustomOnBordingList.length) {
      // Get.offAllNamed(AppRoute.signInScreen);
      Get.offAllNamed(AppRoute.signInScreen);
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  skip() {
    // currentPage = mainCustomOnBordingList.length;

    // pageController.animateToPage(currentPage,
    //     duration: Duration(seconds: 2), curve: Curves.easeInOut);

    Get.offAllNamed(AppRoute.signInScreen);

    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;

    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
