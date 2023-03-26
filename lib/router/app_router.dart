import 'package:flutter/material.dart';
import 'package:shigoto/presentation/customStag.dart';
import 'package:shigoto/presentation/dashboard/dashboard_screen.dart';
import 'package:shigoto/presentation/dashboard/home_screen.dart';
import 'package:shigoto/presentation/forgot_password/check_your_email.dart';
import 'package:shigoto/presentation/forgot_password/forgot_password.dart';
import 'package:shigoto/presentation/forgot_password/successful_screen.dart';
import 'package:shigoto/presentation/job_description/company_description_screen.dart';
import 'package:shigoto/presentation/job_description/job_description_screen.dart';
import 'package:shigoto/presentation/job_description/upload_cv.dart';
import 'package:shigoto/presentation/login_screen/login_screen.dart';
import 'package:shigoto/presentation/signup/sign_up.dart';
import 'package:shigoto/presentation/customStag.dart';
import 'package:shigoto/presentation/update_password/update_password.dart';

import '../../core/exceptions/route_exception.dart';
import '../presentation/customStag.dart';
import '../presentation/customStag.dart';
import '../presentation/customStag.dart';
import '../presentation/job_description/successful.dart';
import '../presentation/new_post/new_post_screen.dart';
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
  static const String jobDescription = '/jobDescription';
  static const String companyDescription = '/companyDescription';
  static const String uploadCv = '/uploadCv';
  static const String successFulJob = '/successFulJob';
  static const String createNewPost = '/createNewPost';
  static const String customStag = '/customStag';
  static const String updatePassword = '/updatePassword';

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
      case jobDescription:
        return MaterialPageRoute(
          builder: (_) => const JobDescriptionScreen(),
        );
      case companyDescription:
        return MaterialPageRoute(
          builder: (_) => const CompanyDescriptionScreen(),
        );
      case uploadCv:
        return MaterialPageRoute(
          builder: (_) => const UploadCv(),
        );
        case successFulJob:
        return MaterialPageRoute(
          builder: (_) => const SuccessfulJobScreen(),
        );
      case createNewPost:
        return MaterialPageRoute(
          builder: (_) => const NewPostCreate(),
        );
      case customStag:
        return MaterialPageRoute(
          builder: (_) => const CustomStag(),
        );
        case updatePassword:
        return MaterialPageRoute(
          builder: (_) => const UpdatePasswordView(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}