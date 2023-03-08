import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/color_constants.dart';

import '../../constants/app_style.dart';

class PrimaryCustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? onTap;

  const PrimaryCustomButton({
    super.key,required this.btnName, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(btnName , style: AppStyle.txtDmSans14W700whiteColor,),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        minimumSize:
        MaterialStateProperty.all(Size(double.infinity, 50)),
        backgroundColor:
        MaterialStateProperty.all(ColorConstants.primaryColor),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
    );
  }
}