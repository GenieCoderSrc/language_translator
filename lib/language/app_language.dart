import 'package:flutter/material.dart';
import 'package:language_translator/extensions/locale_extensions.dart';
import 'package:language_translator/extensions/locale_list_sorting.dart';

import 'app_language_config.dart';
import 'i_language_config.dart';

/// Manages app language settings with optional user overrides.
class AppLanguage {
  static ILanguageConfig _config = AppLanguageConfig();

  AppLanguage._();

  /// Call this optionally from user to override default behavior.
  static void initialize({ILanguageConfig? config}) {
    _config = config ?? AppLanguageConfig();
  }

  static Locale get defaultLanguage => _config.defaultLanguage;

  static List<Locale> get supportedLanguages =>
      _config.supportedLanguages.sortedByName();

  static bool isSupported(Locale locale) =>
      AppLanguage.supportedLanguages.any((l) => locale.matches(l));
}
