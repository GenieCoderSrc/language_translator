import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:language_translator/language/app_language.dart';

mixin LocaleValidatorMixin on Cubit<Locale> {
  /// Emits the locale if supported.
  void emitIfSupported(Locale locale) {
    if (AppLanguage.isSupported(locale)) {
      emit(locale);
    }
  }
}
