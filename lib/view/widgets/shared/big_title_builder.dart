import 'package:flutter/material.dart';

class BigTitleBuilder extends StatelessWidget {
  String theTitle;
  Color textColor;
  BigTitleBuilder({
    super.key,
    required this.theTitle,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      theTitle,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: textColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
