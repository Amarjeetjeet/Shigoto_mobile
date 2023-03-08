import 'package:flutter/material.dart';

import '../../constants/app_style.dart';
import '../../constants/color_constants.dart';
import '../../constants/image_constants.dart';

class CustomSignInGoogleBtn extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomSignInGoogleBtn({
    super.key,required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset(
        ImageConstants.googleLogo,
        width: 20,
      ),
      label: Text(
          "SIGN IN WITH GOOGLE",
          style: AppStyle.txtDmSans14W700whiteColor.copyWith(color: ColorConstants.primaryColor)),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        minimumSize:
        MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(
            ColorConstants.offPurpleColor),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
      ),
    );
  }
}