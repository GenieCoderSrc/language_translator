import 'package:flutter/material.dart';

import '../assets/supported_locales.dart';
import 'i_language_config.dart';

/// Default configuration implementation with `copyWith`
class AppLanguageConfig implements ILanguageConfig {
  @override
  final Locale defaultLanguage;

  @override
  final List<Locale> supportedLanguages;

  const AppLanguageConfig({
    this.defaultLanguage = kDefaultLocale,
    this.supportedLanguages = kSupportedLocales,
  });

  AppLanguageConfig copyWith({
    Locale? defaultLanguage,
    List<Locale>? supportedLanguages,
  }) {
    return AppLanguageConfig(
      defaultLanguage: defaultLanguage ?? this.defaultLanguage,
      supportedLanguages: supportedLanguages ?? this.supportedLanguages,
    );
  }
}
