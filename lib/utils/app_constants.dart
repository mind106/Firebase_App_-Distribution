import 'package:multiple_language/screens/language_model.dart';

class AppConstants {
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  static List<LanguageModel> languages = [
    LanguageModel(
      imageUrl: "Flag_USA.png",
      languageName: 'English',
      languageCode: 'en',
      countryCode: 'us',
    ),
    LanguageModel(
      imageUrl: "Flag_Vietnam.png",
      languageName: 'Vietnamese',
      languageCode: 'vi',
      countryCode: 'vn',
    ),
    LanguageModel(
      imageUrl: "Flag_Vietnam.png",
      languageName: 'Korea',
      languageCode: 'ko',
      countryCode: 'ko',
    ),
  ];
}
