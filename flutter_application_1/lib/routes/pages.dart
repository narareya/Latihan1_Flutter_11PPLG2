import 'package:flutter_application_1/bindings/calculator_binding.dart';
import 'package:flutter_application_1/bindings/login_binding.dart';
import 'package:flutter_application_1/bindings/splashscreen_binding.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/edit_player.dart';
import 'package:flutter_application_1/pages/football.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/splashscreen_page.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainPage, page: () => MainPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage(), binding: CalculatorBinding()),
    GetPage(name: AppRoutes.footballPage, page: ()=> FootballPlayer()),
    GetPage(name: AppRoutes.editplayerPage, page: ()=> EditPlayerPage()),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.splashPage, page: () => SplashscreenPage(), binding: SplashscreenBinding()),
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage(), binding: LoginBinding()),
  ];
}