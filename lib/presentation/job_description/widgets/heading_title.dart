import 'package:flutter/material.dart';

import '../../../core/constants/app_style.dart';

class HeadingTitle extends StatelessWidget{
  final String title;
  const HeadingTitle({super.key ,required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyle.txtOpenSans14W600primaryTextColor,
    );
  }

}