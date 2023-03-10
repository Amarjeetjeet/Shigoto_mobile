import 'package:flutter/material.dart';

import '../../../core/constants/app_style.dart';

class HeadingDetails extends StatelessWidget{
  final String info;
  const HeadingDetails({super.key ,required this.info});

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: AppStyle.txtDmSans12W400primaryTextColor,
    );
  }

}