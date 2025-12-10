import 'package:flutter_application_1/bindings/calculator_binding.dart';
import 'package:flutter_application_1/bindings/contact_binding.dart';
import 'package:flutter_application_1/bindings/example_binding.dart';
import 'package:flutter_application_1/bindings/football_binding.dart';
import 'package:flutter_application_1/bindings/googleauth_binding.dart';
import 'package:flutter_application_1/bindings/login_binding.dart';
import 'package:flutter_application_1/bindings/loginapi_binding.dart';
import 'package:flutter_application_1/bindings/splashscreen_binding.dart';
import 'package:flutter_application_1/bindings/table_premiere_binding.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/contact_page.dart';
import 'package:flutter_application_1/pages/edit_player.dart';
import 'package:flutter_application_1/pages/example_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/loginapi_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/splashscreen_page.dart';
import 'package:flutter_application_1/pages/table_premiere_page.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainPage, page: () => MainPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage(), binding: CalculatorBinding()),
    GetPage(name: AppRoutes.footballPage, page: ()=> FootballPage(), binding: FootballBinding()),
    GetPage(name: AppRoutes.editplayerPage, page: ()=> EditPlayerPage()),
    GetPage(name: AppRoutes.splashPage, page: () => SplashscreenPage(), binding: SplashscreenBinding()),
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.loginAPIPage, page: () => LoginAPIPage(), bindings: [LoginAPIBinding(), GoogleauthBinding(),],),
    GetPage(name: AppRoutes.contactPage, page: () => ContactPage(), binding: ContactBinding()),
    GetPage(name: AppRoutes.examplePage, page: () => ExamplePage(), binding: ExampleBinding()),
    GetPage(name: AppRoutes.tablePremierePage, page: () => TablePremierePage(), binding: TablePremiereBinding()),
    GetPage(name: AppRoutes.homePage, page: () => HomePage()),
  ];
}