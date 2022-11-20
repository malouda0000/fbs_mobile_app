import 'package:get/state_manager.dart';

abstract class HomeScreenController extends GetxController {
  carouselSliderChanged(index);
}

class HomeScreenControllerImp extends HomeScreenController {
  int carousIndex = 0;

  @override
  carouselSliderChanged(index) {
    carousIndex = index;

    update();
  }
}
