import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/router/app_router.dart';

import '../../core/custom_widgets/buttons/custom_secondary_color.dart';
import '../../core/custom_widgets/buttons/custom_signin_with_google_btn.dart';
import '../../core/custom_widgets/input_label.dart';

class CheckYourEmail extends StatelessWidget {
  const CheckYourEmail({super.key});

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
                  "Check Your Email",
                  style: AppStyle.txtDmSans30W700primaryTextColor,
                ),
                Text.rich(textAlign : TextAlign.center,TextSpan(
                text: "We have sent the reset password to the email address ",
                style: AppStyle.txtDmSans12W400secondaryTextColor,
                // TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'brandonelouis@gmial.com',
                      style: AppStyle.txtDmSans12W400primaryTextColor
                    // Tex tStyle(
                    //     fontSize: 12,
                    //     fontWeight: FontWeight.w400,
                    //     decoration: TextDecoration.underline,
                    //     color: ColorConstants.secondaryColor),
                  )
                ])),
                buildSizedBox(54),

                Image.asset(ImageConstants.checkYourEmail ,width: 95,),

                buildSizedBox(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: PrimaryCustomButton(btnName: "Open Your Email", onTap: () {
                    print("object");
                    Navigator.pushNamed(context, AppRouter.successfulScreen);
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
                buildSizedBox(30),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text.rich(TextSpan(
                      text: "You have not received the email?  ",
                      style: AppStyle.txtDmSans12W400secondaryTextColor,
                      // TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      children: <InlineSpan>[
                        TextSpan(
                            text: 'Resend',
                            style: AppStyle.txtDmSans12W400secondaryColor
                          // Tex tStyle(
                          //     fontSize: 12,
                          //     fontWeight: FontWeight.w400,
                          //     decoration: TextDecoration.underline,
                          //     color: ColorConstants.secondaryColor),
                        )
                      ])),
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




