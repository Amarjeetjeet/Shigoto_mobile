import 'package:flutter/material.dart';

import '../../../core/constants/app_style.dart';

class ErrorTitle extends StatelessWidget {
  final String message;
  const ErrorTitle({
    super.key, required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Text(message ,style: AppStyle.txtDmSans16W700primaryTextColor);
  }
}