import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/color_constants.dart';

import '../../constants/app_style.dart';

class SecondaryCustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? onTap;
  final bool allowBlue;

  const SecondaryCustomButton({
    super.key,required this.btnName, required this.onTap, this.allowBlue = false
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        minimumSize:
        MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor:
        MaterialStateProperty.all(ColorConstants.offPurpleColor),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(btnName , style : allowBlue ?  AppStyle.txtDmSans12W400primaryTextColor : AppStyle.txtDmSans14W700whiteColor),
    );
  }
}