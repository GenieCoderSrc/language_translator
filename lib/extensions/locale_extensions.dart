import 'package:flutter/material.dart';

extension LocaleExtension on Locale {
  bool matches(Locale other) {
    return languageCode == other.languageCode &&
        (countryCode == null || countryCode == other.countryCode);
  }
}
