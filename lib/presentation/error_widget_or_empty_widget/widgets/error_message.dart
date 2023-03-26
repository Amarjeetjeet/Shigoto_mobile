import 'package:flutter/cupertino.dart';

import '../../../core/constants/app_style.dart';

class ErrorMessage extends StatelessWidget {
  final String msg;
  const ErrorMessage({
    super.key, required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Text(msg,
        textAlign: TextAlign.center
        ,style: AppStyle.txtDmSans12W400secondaryTextColor);
  }
}