import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/custom_widgets/buttons/custom_primary_Btn.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/router/app_router.dart';

import '../../core/custom_widgets/buttons/custom_secondary_color.dart';
import '../../core/custom_widgets/buttons/custom_signin_with_google_btn.dart';
import '../../core/custom_widgets/input_label.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Welcome Back",
                  style: AppStyle.txtDmSans30W700primaryTextColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 11),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    textAlign: TextAlign.center,
                    style: AppStyle.txtDmSans12W400secondaryTextColor,
                  ),
                ),
                buildSizedBox(54),
                const InputLabelText(text: "Email"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'user@gmail.com',
                  ),
                ),
                buildSizedBox15(),
                const InputLabelText(text: "Password"),
                TextFormField(
                  style: AppStyle.txtDmSans12W400primaryTextColorA60,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                buildSizedBox(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          fillColor:  MaterialStateProperty.all(ColorConstants.e6e1ffColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Text("Remember me",style: AppStyle.txtDmSans12W400AAA6B9TextColor,)
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRouter.forgotPassword);
                        }, child: Text("Forgot Password ?",style: AppStyle.txtDmSans12W400primaryTextColor )),
                  ],
                ),
                buildSizedBox(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: PrimaryCustomButton(btnName: "Login", onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, AppRouter.dashboard, ModalRoute.withName('/login'));
                  },),
                ),
                buildSizedBox(19),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: CustomSignInGoogleBtn(onTap: () {  },),
                ),
                buildSizedBox(16),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRouter.signup);
                  },
                  child: Text.rich(TextSpan(
                      text: "You don't have an account yet? ",
                      style: AppStyle.txtDmSans12W400secondaryTextColor,
                      // TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      children: <InlineSpan>[
                        TextSpan(
                          text: ' sign up',
                          style: AppStyle.txtDmSans12W400secondaryColor
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




