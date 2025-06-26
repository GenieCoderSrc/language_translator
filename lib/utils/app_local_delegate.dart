import 'package:flutter/material.dart';
import 'package:language_translator/extensions/locale_extensions.dart';
import 'package:language_translator/language/app_language.dart';

import 'translate.dart';

class AppLocaleDelegate extends LocalizationsDelegate<Translate> {
  const AppLocaleDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLanguage.supportedLanguages.any((l) => locale.matches(l));

  @override
  Future<Translate> load(Locale locale) async {
    final Translate localizations = Translate(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocaleDelegate old) => false;
}
