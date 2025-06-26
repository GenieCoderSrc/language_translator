import 'package:flutter/material.dart';
import 'package:language_translator/utils/language_label_util.dart';

extension LocaleListSorting on List<Locale> {
  List<Locale> sortedByName() {
    final list = [...this];
    list.sort(
      (a, b) => LanguageLabelUtil.getDisplayName(
        a,
      ).compareTo(LanguageLabelUtil.getDisplayName(b)),
    );
    return list;
  }
}
