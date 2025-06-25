import 'app_language.dart';

class UtilLanguageName {
  ///Get Language Global Language Name
  static String getGlobalLanguageName(String code) {
    switch (code) {
      case 'af':
        return 'Afrikaans';
      case 'am':
        return 'አማርኛ';
      case 'ar':
        return 'العربية';
      case 'az':
        return 'Azərbaycan dili';
      case 'be':
        return 'Беларуская';
      case 'bg':
        return 'Български';
      case 'bn':
        return 'বাংলা';
      case 'bs':
        return 'Bosanski';
      case 'ca':
        return 'Català';
      case 'cs':
        return 'Čeština';
      case 'cy':
        return 'Cymraeg';
      case 'da':
        return 'Dansk';
      case 'de':
        return 'Deutsch';
      case 'el':
        return 'Ελληνικά';
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'et':
        return 'Eesti';
      case 'eu':
        return 'Euskara';
      case 'fa':
        return 'فارسی';
      case 'fi':
        return 'Suomi';
      case 'fr':
        return 'Français';
      case 'gl':
        return 'Galego';
      case 'gu':
        return 'ગુજરાતી';
      case 'he':
        return 'עברית';
      case 'hi':
        return 'हिंदी';
      case 'hr':
        return 'Hrvatski';
      case 'hu':
        return 'Magyar';
      case 'hy':
        return 'Հայերեն';
      case 'id':
        return 'Bahasa Indonesia';
      case 'is':
        return 'Íslenska';
      case 'it':
        return 'Italiano';
      case 'ja':
        return '日本語';
      case 'ka':
        return 'ქართული';
      case 'kk':
        return 'Қазақ тілі';
      case 'km':
        return 'ខ្មែរ';
      case 'kn':
        return 'ಕನ್ನಡ';
      case 'ko':
        return '한국어';
      case 'ky':
        return 'Кыргызча';
      case 'lo':
        return 'ລາວ';
      case 'lt':
        return 'Lietuvių';
      case 'lv':
        return 'Latviešu';
      case 'mk':
        return 'Македонски';
      case 'ml':
        return 'മലയാളം';
      case 'mn':
        return 'Монгол';
      case 'mr':
        return 'मराठी';
      case 'ms':
        return 'Bahasa Melayu';
      case 'my':
        return 'မြန်မာဘာသာ';
      case 'ne':
        return 'नेपाली';
      case 'nl':
        return 'Nederlands';
      case 'no':
        return 'Norsk';
      case 'or':
        return 'ଓଡ଼ିଆ';
      case 'pa':
        return 'ਪੰਜਾਬੀ';
      case 'pl':
        return 'Polski';
      case 'ps':
        return 'پښتو';
      case 'pt':
        return 'Português';
      case 'ro':
        return 'Română';
      case 'ru':
        return 'Русский';
      case 'sd':
        return 'سنڌي';
      case 'si':
        return 'සිංහල';
      case 'sk':
        return 'Slovenčina';
      case 'sl':
        return 'Slovenščina';
      case 'sq':
        return 'Shqip';
      case 'sr':
        return 'Српски';
      case 'sv':
        return 'Svenska';
      case 'sw':
        return 'Kiswahili';
      case 'ta':
        return 'தமிழ்';
      case 'te':
        return 'తెలుగు';
      case 'th':
        return 'ไทย';
      case 'tk':
        return 'Türkmen dili';
      case 'tr':
        return 'Türkçe';
      case 'tt':
        return 'Татарча';
      case 'uk':
        return 'Українська';
      case 'ur':
        return 'اردو';
      case 'uz':
        return 'O‘zbek';
      case 'vi':
        return 'Tiếng Việt';
      case 'zh':
        return '中文';
      case 'zu':
        return 'isiZulu';
      default:
        return 'Language code not supported';
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
