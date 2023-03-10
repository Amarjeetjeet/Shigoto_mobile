import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_style.dart';
import '../../../core/constants/color_constants.dart';
import '../../../core/constants/image_constants.dart';
import 'bullet_text.dart';

class CompanyLogoDetails extends StatelessWidget{
  const CompanyLogoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.f3f2f2Color,
      height: 124,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: ColorConstants.skyBlueColor,
              child:
              Image.asset(ImageConstants.googleLogo, height: 35),
            ),
          ),
          Positioned(
              bottom: 45,
              left: 0,
              right: 0,
              child: Text(
                "UI/UX Designer",
                style: AppStyle.txtDmSans16W700primaryTextColor,
                textAlign: TextAlign.center,
              )),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildText("Google"),
                BulletText(),
                buildText("California"),
                BulletText(),
                buildText("1 day ago"),
              ],
            ),
          )
        ],
      ),
    );
  }
Text buildText(String text) => Text(
      text,
      style: AppStyle.txtDmSans16W400primaryTextColor,
    );
}