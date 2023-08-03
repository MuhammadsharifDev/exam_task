



import 'package:exam/routes/approutes.dart';
import 'package:exam/screens/main/auth/login/login_page.dart';
import 'package:exam/screens/main/auth/sign/sign_up.dart';
import 'package:exam/screens/main/homescreen/bottom_navigation_bar.dart';
import 'package:exam/screens/main/homescreen/detail_page/detail_page.dart';

import 'package:exam/screens/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

class AppPages{

  AppPages._();

  static Map<String, WidgetBuilder> routes={
    AppRoutes.initial: (_) => const SplashPage(),
    AppRoutes.signUp:(_)=>const SignUpPage(),
    AppRoutes.loginPage: (_) => const LoginPage(),
    AppRoutes.homePage:(_)=>const BottomNavigationBarPage(),
    // AppRoutes.detailPage:(_)=>const DetailPage(item: ,),
  };
}