import 'package:flutter/material.dart';

class AppLanguage {
  ///Default Language
  static Locale defaultLanguage = const Locale("en");

  ///List Language support in Application
  static List<Locale> supportLanguage = const [
    Locale('af'), // Afrikaans
    Locale('am'), // Amharic
    Locale('ar'), // Arabic
    Locale('az'), // Azerbaijani
    Locale('be'), // Belarusian
    Locale('bg'), // Bulgarian
    Locale('bn'), // Bengali
    Locale('bs'), // Bosnian
    Locale('ca'), // Catalan
    Locale('cs'), // Czech
    Locale('cy'), // Welsh
    Locale('da'), // Danish
    Locale('de'), // German
    Locale('el'), // Greek
    Locale('en', 'US'), // English (US)
    Locale('en', 'GB'), // English (UK)
    Locale('es'), // Spanish
    Locale('et'), // Estonian
    Locale('eu'), // Basque
    Locale('fa'), // Persian
    Locale('fi'), // Finnish
    Locale('fr'), // French
    Locale('gl'), // Galician
    Locale('gu'), // Gujarati
    Locale('he'), // Hebrew
    Locale('hi'), // Hindi
    Locale('hr'), // Croatian
    Locale('hu'), // Hungarian
    Locale('hy'), // Armenian
    Locale('id'), // Indonesian
    Locale('is'), // Icelandic
    Locale('it'), // Italian
    Locale('ja'), // Japanese
    Locale('ka'), // Georgian
    Locale('kk'), // Kazakh
    Locale('km'), // Khmer
    Locale('kn'), // Kannada
    Locale('ko'), // Korean
    Locale('ky'), // Kyrgyz
    Locale('lo'), // Lao
    Locale('lt'), // Lithuanian
    Locale('lv'), // Latvian
    Locale('mk'), // Macedonian
    Locale('ml'), // Malayalam
    Locale('mn'), // Mongolian
    Locale('mr'), // Marathi
    Locale('ms'), // Malay
    Locale('my'), // Burmese
    Locale('ne'), // Nepali
    Locale('nl'), // Dutch
    Locale('no'), // Norwegian
    Locale('or'), // Odia
    Locale('pa'), // Punjabi
    Locale('pl'), // Polish
    Locale('ps'), // Pashto
    Locale('pt'), // Portuguese
    Locale('pt', 'BR'), // Portuguese (Brazil)
    Locale('pt', 'PT'), // Portuguese (Portugal)
    Locale('ro'), // Romanian
    Locale('ru'), // Russian
    Locale('sd'), // Sindhi
    Locale('si'), // Sinhala
    Locale('sk'), // Slovak
    Locale('sl'), // Slovenian
    Locale('sq'), // Albanian
    Locale('sr'), // Serbian
    Locale('sv'), // Swedish
    Locale('sw'), // Swahili
    Locale('ta'), // Tamil
    Locale('te'), // Telugu
    Locale('th'), // Thai
    Locale('tk'), // Turkmen
    Locale('tr'), // Turkish
    Locale('tt'), // Tatar
    Locale('uk'), // Ukrainian
    Locale('ur'), // Urdu
    Locale('uz'), // Uzbek
    Locale('vi'), // Vietnamese
    Locale('zh'), // Chinese (Simplified)
    Locale('zh', 'CN'), // Chinese (China)
    Locale('zh', 'TW'), // Chinese (Taiwan)
    Locale('zu'), // Zulu
  ];

  ///Singleton repository
  static final AppLanguage _instance = AppLanguage._internal();

  factory AppLanguage() {
    return _instance;
  }

  AppLanguage._internal();
}
