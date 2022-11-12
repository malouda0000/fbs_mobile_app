import 'package:flutter/material.dart';

class ForgetPasswordRow extends StatelessWidget {
  const ForgetPasswordRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (vale) {}),
            Text('remeber me'),
          ],
        ),
        // Spacer(),
        Text('forget password?'),
      ],
    );
  }
}
