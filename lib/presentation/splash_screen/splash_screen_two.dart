import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/image_constants.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/presentation/login_screen/login_screen.dart';
import 'package:shigoto/router/app_router.dart';
import 'dart:async';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, AppRouter.login);
        },
        backgroundColor: ColorConstants.primaryColor,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 32, top: 20),
            child: Text("Shigoto",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                ImageConstants.splashScreen,
                width: 350,
              ),
              SizedBox(
                height: 78,
              ),
              buildTextAlign("Find Your", Colors.black, 40, FontWeight.w700),
              buildTextAlign("Dream Job", ColorConstants.secondaryColor, 40,
                  FontWeight.w700),
              buildTextAlign("Here!", Colors.black, 40, FontWeight.w700),
              SizedBox(
                height: 15,
              ),
              Text(
                "Explore all the most exciting job roles based on your interest and study major.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14,
                    height: 1.4),
              )

            ],
          ),
        ),
      ),
    );
  }

  Align buildTextAlign(
      String text, Color color, double fontSize, FontWeight fontWeight) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            height: 0.8),
      ),
    );
  }
}
