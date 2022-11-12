import 'package:fbs_mobile_app/controllers/custom_onbording_controller.dart';
import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:fbs_mobile_app/models/data%20source/custom_onbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlidingControllerRow extends StatelessWidget {
  const SlidingControllerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SkipButton(),
        SlidingDots(),
        NextButton(),
      ],
    );
  }
}

class NextButton extends GetView<OnBordingControllerImp> {
  const NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColor.kPrimaryColor,
        borderRadius: BorderRadius.circular(
          500,
        ),
      ),
      child: MaterialButton(
        elevation: 0,
        color: AppColor.kPrimaryColor,
        child: Text(
          // AppLocal.next.tr,
          'next',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
        ),
        onPressed: () async {
          // await mySharedPrefes!.setBool('firstAppInit', true);
          controller.next();
        },
      ),
    );
  }
}

class SlidingDots extends StatelessWidget {
  const SlidingDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              mainCustomOnBordingList.length,
              (index) {
                return AnimatedContainer(
                  duration: Duration(
                    milliseconds: 900,
                  ),
                  width: controller.currentPage == index ? 20 : 6,
                  height: 6,
                  margin: const EdgeInsets.all(
                    // theDefaultPadding,

                    2,
                  ),
                  decoration: BoxDecoration(
                      color: AppColor.kPrimaryColor,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(15)),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class SkipButton extends GetView<OnBordingControllerImp> {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColor.kPrimaryColor,
        borderRadius: BorderRadius.circular(
          500,
        ),
      ),
      child: MaterialButton(
        elevation: 0,
        color: AppColor.kPrimaryColor,
        child: Text(
          // AppLocal.skip.tr,
          'skip',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
        ),
        onPressed: () {
          controller.skip();
        },
      ),
    );
  }
}
