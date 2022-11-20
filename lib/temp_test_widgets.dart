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


// class SlidingDots extends StatelessWidget {
//   const SlidingDots({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<OnBordingControllerImp>(
//       builder: (controller) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ...List.generate(
//               mainCustomOnBordingList.length,
//               (index) {
//                 return AnimatedContainer(
//                   duration: Duration(
//                     milliseconds: 900,
//                   ),
//                   width: controller.currentPage == index ? 20 : 6,
//                   height: 6,
//                   margin: const EdgeInsets.all(
//                     // theDefaultPadding,

//                     2,
//                   ),
//                   decoration: BoxDecoration(
//                       color: AppColor.kPrimaryColor,
//                       // shape: BoxShape.circle,
//                       borderRadius: BorderRadius.circular(15)),
//                 );
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
