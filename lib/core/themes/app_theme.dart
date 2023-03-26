import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xfff2f2f2);
  static Color darkPrimaryColor = const Color(0xfff2f2f2);
  static Color darkAccentColor = Colors.blueGrey.shade600;
  static Color darkParticlesColor = const Color(0x44948282);

  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "DM Sans , Source Sans Pro",
    primaryColor: lightPrimaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor:ColorConstants.offWhiteColor ,
    accentColor: lightAccentColor,
    backgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppStyle.txtDmSans12W400primaryTextColorA60,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:
        BorderSide(color: Colors.white, width: 0.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:
        BorderSide(color: Colors.white, width: 0.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide:
        BorderSide(color: Colors.white, width: 0.0),
      ),
      border: OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.white, width: 0.0),
          borderRadius:
          BorderRadius.all(Radius.circular(10.0))),
      fillColor: Colors.white,
      filled: true,
        contentPadding:
        EdgeInsets.symmetric(vertical: 16, horizontal: 16)
    ),
      appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          iconTheme: IconThemeData(
              color: Colors.black
          )
      )
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "DM Sans , Source Sans Pro",
    primaryColor: darkPrimaryColor,
    accentColor: darkAccentColor,
    backgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: AppStyle.txtDmSans12W400primaryTextColorA60,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
            BorderSide(color: Colors.white, width: 0.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
            BorderSide(color: Colors.white, width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
            BorderSide(color: Colors.white, width: 0.0),
          ),
          border: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.white, width: 0.0),
              borderRadius:
              BorderRadius.all(Radius.circular(10.0))),
          fillColor: Colors.white,
          filled: true,
          contentPadding:
          EdgeInsets.symmetric(vertical: 16, horizontal: 16)
      )
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
      themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightBackgroundColor
          : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension ThemeExtras on ThemeData {
  Color get particlesColor => this.brightness == Brightness.light
      ? AppTheme.lightParticlesColor
      : AppTheme.darkParticlesColor;
}