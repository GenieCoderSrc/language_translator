import 'package:flutter/material.dart';
import 'package:language_translator/language/app_language.dart';
import 'package:language_translator/language/app_language_config.dart';

/// Initializes the app's language configuration.
///
/// - [defaultLanguageCode]: e.g., 'en', 'bn'
/// - [countryCode]: Optional ISO 3166-1 country code (e.g., 'US', 'BD')
/// - [supportedLocales]: Optional list of supported locales
void initializeLanguageConfig({
  String? defaultLanguageCode,
  String? countryCode,
  List<Locale>? supportedLocales,
}) {
  final Locale defaultLocale = Locale(
    defaultLanguageCode ?? AppLanguage.defaultLanguage.languageCode,
    countryCode,
  );

  final config = AppLanguageConfig().copyWith(
    defaultLanguage: defaultLocale,
    supportedLanguages: supportedLocales,
  );

  AppLanguage.initialize(config: config);
}
