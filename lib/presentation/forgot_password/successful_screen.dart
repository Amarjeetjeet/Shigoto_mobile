import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/core/constants/color_constants.dart';

import '../../core/custom_widgets/buttons/custom_secondary_color.dart';
import '../../core/custom_widgets/buttons/custom_signin_with_google_btn.dart';
import '../../core/custom_widgets/input_label.dart';

class SuccessFulScreen extends StatelessWidget {
  const SuccessFulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: Column(
              children: [
                buildSizedBox(100),
                Text(
                  "Successfully",
                  style: AppStyle.txtDmSans30W700primaryTextColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 11),
                  child: Text(
                    "Your password has been updated, please change your password regularly to avoid this happening",
                    textAlign: TextAlign.center,
                    style: AppStyle.txtDmSans12W400secondaryTextColor,
                  ),
                ),
                buildSizedBox(54),

                Image.asset(ImageConstants.checkYourEmail ,width: 95,),

                buildSizedBox(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: PrimaryCustomButton(btnName: "Continue", onTap: () {
                    print("object");
                  },),
                ),
                buildSizedBox(19),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox15() => const SizedBox(
    height: 15,
  );

  SizedBox buildSizedBox(double height) => SizedBox(
    height: height,
  );
}




