import 'package:flutter/material.dart';

abstract class ILanguageConfig {
  Locale get defaultLanguage;

  ///List Language support in Application
  List<Locale> get supportedLanguages;
}
