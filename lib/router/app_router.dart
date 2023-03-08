import 'package:flutter/material.dart';
import 'package:shigoto/presentation/dashboard/dashboard_screen.dart';
import 'package:shigoto/presentation/dashboard/home_screen.dart';
import 'package:shigoto/presentation/forgot_password/check_your_email.dart';
import 'package:shigoto/presentation/forgot_password/forgot_password.dart';
import 'package:shigoto/presentation/forgot_password/successful_screen.dart';
import 'package:shigoto/presentation/login_screen/login_screen.dart';
import 'package:shigoto/presentation/signup/sign_up.dart';

import '../../core/exceptions/route_exception.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/splash_screen_two.dart';

class AppRouter {
  static const String splash = '/';
  static const String splash2 = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgotPassword';
  static const String checkYourEmail = '/checkYourEmail';
  static const String successfulScreen = '/successfulScreen';
  static const String home = '/home';
  static const String dashboard = '/dashboard';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case splash2:
        return MaterialPageRoute(
          builder: (_) => const SplashScreenTwo(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case signup:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
        case checkYourEmail:
        return MaterialPageRoute(
          builder: (_) => const CheckYourEmail(),
        );
      case successfulScreen:
        return MaterialPageRoute(
          builder: (_) => const SuccessFulScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}