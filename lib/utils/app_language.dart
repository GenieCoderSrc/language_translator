import 'package:flutter/material.dart';

class AppLanguage {
  ///Default Language
  static Locale defaultLanguage = const Locale("bn");

  ///List Language support in Application
  static List<Locale> supportLanguage = const[
    Locale('en', 'US'), // English, United States
    Locale('bn'),      // Bengali
    Locale('ar'),      // Arabic
    Locale('zh'),      // Chinese (Simplified)
    Locale('zh', 'TW'),// Chinese (Traditional)
    Locale('fr'),      // French
    Locale('de'),      // German
    Locale('hi'),      // Hindi
    Locale('es'),      // Spanish
    Locale('pt'),      // Portuguese
    Locale('ru'),      // Russian
    Locale('ja'),      // Japanese
    Locale('ko'),      // Korean
    Locale('it'),      // Italian
    Locale('nl'),      // Dutch
    Locale('th'),      // Thai
    Locale('tr'),      // Turkish
    Locale('kn'),      // Kannada
    Locale('ta'),      // Tamil
    Locale('te'),      // Telugu
    Locale('ml'),      // Malayalam
    Locale('ur'),      // Urdu
    Locale('pa')       // Punjabi
  ];

  ///Singleton repository
  static final AppLanguage _instance = AppLanguage._internal();

  factory AppLanguage() {
    return _instance;
  }

  AppLanguage._internal();
}
