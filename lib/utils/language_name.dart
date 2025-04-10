import 'app_language.dart';

class UtilLanguageName {
  ///Get Language Global Language Name
  static String getGlobalLanguageName(String code) {
    switch (code) {
      case "en":
        return "English";
      case "hi":
        return "हिंदी";
      case "pa":
        return "ਪੰਜਾਬੀ";
      case "bn":
        return "বাংলা";
      case "es":
        return "Español";
      default:
        return "Country code not found";
    }
  }

  /// RTL support
  // true: start from right hand side.
  // False: start from Left hand side
  static bool isRTL() {
    switch (AppLanguage.defaultLanguage.languageCode) {
      case "ar":
        return true;
      default:
        return false;
    }
  }

  ///Singleton repository
  static final UtilLanguageName _instance = UtilLanguageName._internal();

  factory UtilLanguageName() {
    return _instance;
  }

  UtilLanguageName._internal();
}
