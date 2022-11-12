import 'package:fbs_mobile_app/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AgreeTermsRow extends StatelessWidget {
  const AgreeTermsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (vale) {}),
            const Text('I agree to '),
          ],
        ),
        // Spacer(),
        Text(
          'the terms and conditions'.toUpperCase(),
          style: const TextStyle(
            color: AppColor.kPrimaryColor,
            // fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
