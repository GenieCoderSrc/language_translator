import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:language_translator/language/app_language.dart';

import '../mixins/locale_validator.dart';

class HydratedLanguageCubit extends HydratedCubit<Locale>
    with LocaleValidatorMixin {
  HydratedLanguageCubit() : super(AppLanguage.defaultLanguage);

  /// Set locale if supported
  void setLocale(Locale locale) {
    emitIfSupported(locale);
  }

  /// Reset to default language
  void resetToDefault() {
    emit(AppLanguage.defaultLanguage);
  }

  /// Toggle between two given locales
  void toggle(Locale a, Locale b) {
    emit(state.languageCode == a.languageCode ? b : a);
  }

  /// Deserialize from storage
  @override
  Locale fromJson(Map<String, dynamic> json) {
    final languageCode = json['languageCode'] as String?;
    final countryCode = json['countryCode'] as String?;

    if (languageCode == null) {
      return AppLanguage.defaultLanguage;
    }

    return Locale(languageCode, countryCode);
  }

  /// Serialize to storage
  @override
  Map<String, dynamic> toJson(Locale state) {
    return {
      'languageCode': state.languageCode,
      'countryCode': state.countryCode,
    };
  }
}
