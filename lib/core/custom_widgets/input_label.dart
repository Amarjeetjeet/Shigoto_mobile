import 'package:flutter/material.dart';

import '../constants/app_style.dart';

class InputLabelText extends StatelessWidget {
  final String text;

  const InputLabelText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(text, style: AppStyle.txtOpenSans12W600primaryTextColor),
        ));
  }
}