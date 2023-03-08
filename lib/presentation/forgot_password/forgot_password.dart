import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/router/app_router.dart';

import '../../core/custom_widgets/buttons/custom_secondary_color.dart';
import '../../core/custom_widgets/buttons/custom_signin_with_google_btn.dart';
import '../../core/custom_widgets/input_label.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                  "Forgot Password?",
                  style: AppStyle.txtDmSans30W700primaryTextColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 11),
                  child: Text(
                    "To reset your password, you need your email or mobile number that can be authenticated",
                    textAlign: TextAlign.center,
                    style: AppStyle.txtDmSans12W400secondaryTextColor,
                  ),
                ),
                buildSizedBox(54),

                Image.asset(ImageConstants.forgotPassword ,width: 95,),

                const InputLabelText(text: "Email"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'user@gmail.com',
                  ),
                ),
                buildSizedBox(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: PrimaryCustomButton(btnName: "Reset Password", onTap: () {
                    print("object");
                    Navigator.pushNamed(context, AppRouter.checkYourEmail);
                  },),
                ),
                buildSizedBox(19),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: SecondaryCustomButton(btnName: "Back to Login", onTap: () {
                    Navigator.pop(context);
                    print("object");
                  },),
                ),
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




