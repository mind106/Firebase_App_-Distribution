// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiple_language/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utils/dep.dart' as dep;
import 'package:multiple_language/controllers/language_controller.dart';
import 'package:multiple_language/utils/app_constants.dart';
import 'package:multiple_language/utils/app_routes.dart';
import 'package:multiple_language/utils/messages.dart';

Future<void> main() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  WidgetsFlutterBinding.ensureInitialized();
  final Map<String, Map<String, String>> _languages = await dep.init();

  runApp(MyApp(
    languages: _languages,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.languages,
  }) : super(key: key);
  final Map<String, Map<String, String>> languages;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        locale: localizationController.locale,
        translations: Messages(languages: languages),
        fallbackLocale: Locale(AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode),
        initialRoute: RouteHelper.getSplashRoute(),
        getPages: RouteHelper.routes,
      );
    });
  }
}
