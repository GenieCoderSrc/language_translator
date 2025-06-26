import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/extensions/locale_list_sorting.dart';
import 'package:language_translator/language/app_language.dart';

import '../mixins/locale_validator.dart';

class LanguageSelectionCubit extends Cubit<Locale> with LocaleValidatorMixin {
  LanguageSelectionCubit() : super(AppLanguage.defaultLanguage);

  void select(Locale locale) {
    emitIfSupported(locale);
  }

  List<Locale> get supportedLanguages =>
      AppLanguage.supportedLanguages.sortedByName();
}
