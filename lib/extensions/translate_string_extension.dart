import 'package:dart_data_type_parser/dart_data_type_parsers/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:language_translator/utils/translate.dart';
import 'package:navigation_wihout_context/navigation_wihout_context.dart';

extension TranslateStringExtension on String {
  String translateTxt(BuildContext context) =>
      Translate.of(context)?.translate(this) ?? toTitleCase();

  String translateWithoutContext() {
    final BuildContext? context = navigator.navigatorKey.currentState?.context;
    return context != null
        ? Translate.of(context)?.translate(this) ?? toTitleCase()
        : toTitleCase();
  }
}


