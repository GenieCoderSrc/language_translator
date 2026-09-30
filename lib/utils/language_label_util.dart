import 'package:flutter/material.dart';

class LanguageLabelUtil {
  static String getDisplayName(Locale locale) {
    final String languageCode = locale.languageCode;
    final String? countryCode = locale.countryCode?.toUpperCase();

    switch (languageCode) {
      case 'af':
        return 'Afrikaans';
      case 'am':
        return 'አማርኛ';
      case 'ar':
        return 'العربية';
      case 'az':
        return 'Azərbaycanca';
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
        return countryCode == 'GB' ? 'English (UK)' : 'English';
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
        return 'हिन्दी';
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
        return 'Қазақша';
      case 'km':
        return 'ភាសាខ្មែរ';
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
        return 'မြန်မာစာ';
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
        return countryCode == 'PT'
            ? 'Português (Portugal)'
            : countryCode == 'BR'
                ? 'Português (Brasil)'
                : 'Português';
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
        return 'Türkmen';
      case 'tr':
        return 'Türkçe';
      case 'tt':
        return 'Татарча';
      case 'uk':
        return 'Українська';
      case 'ur':
        return 'اردو';
      case 'uz':
        return 'O‘zbekcha';
      case 'vi':
        return 'Tiếng Việt';
      case 'zh':
        return countryCode == 'TW'
            ? '繁體中文'
            : countryCode == 'CN'
                ? '简体中文'
                : '中文';
      case 'zu':
        return 'isiZulu';
      default:
        return languageCode.toUpperCase();
    }
  }

  static String getFlagEmoji(Locale locale) {
    final cc = locale.countryCode ?? _defaultCountry(locale.languageCode);
    if (cc == null || cc.length != 2) return '🌐';

    return cc
        .toUpperCase()
        .codeUnits
        .map((unit) => String.fromCharCode(0x1F1E6 - 65 + unit))
        .join();
  }

  static bool isRtl(Locale locale) {
    const rtlLanguages = {
      'ar', // Arabic
      'he', // Hebrew
      'fa', // Persian
      'ur', // Urdu
      'ps', // Pashto
      'sd', // Sindhi
    };

    return rtlLanguages.contains(locale.languageCode);
  }

  static String? _defaultCountry(String langCode) {
    switch (langCode) {
      case 'en':
        return 'US';
      case 'pt':
        return 'BR';
      case 'zh':
        return 'CN';
      case 'es':
        return 'ES';
      case 'fr':
        return 'FR';
      case 'ar':
        return 'SA';
      case 'bn':
        return 'BD';
      case 'hi':
        return 'IN';
      case 'ru':
        return 'RU';
      case 'ja':
        return 'JP';
      case 'ko':
        return 'KR';
      case 'de':
        return 'DE';
      case 'it':
        return 'IT';
      case 'tr':
        return 'TR';
      case 'fa':
        return 'IR';
      case 'ms':
        return 'MY';
      case 'id':
        return 'ID';
      case 'vi':
        return 'VN';
      case 'ta':
        return 'IN';
      default:
        return null;
    }
  }
}
