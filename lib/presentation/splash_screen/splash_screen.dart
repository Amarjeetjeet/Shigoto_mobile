import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/presentation/splash_screen/splash_screen_two.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    const SplashScreenTwo()
            )
        )
    );
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.appLogo,
              width: 60,
            ),
            Text("Shigoto" , style: AppStyle.txtDmSans26W700whiteColor,)
          ],
        ) ,
      )



    );
  }

}
