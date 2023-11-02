import 'package:get/get.dart';

import 'package:multiple_language/screens/language_screen.dart';
import 'package:multiple_language/screens/splash_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String language = '/language';

  static String getSplashRoute() => '$splash';
  static String getInitialRoute() => '$initial';
  static String getLanguageRoute() => '$language';

  static List<GetPage> routes = [
    GetPage(
        name: splash,
        page: () {
          return const SplashScreen();
        }),
    GetPage(
        name: language,
        page: () {
          return const LanguageScreen();
        })
  ];
}
