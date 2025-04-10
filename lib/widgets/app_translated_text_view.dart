import 'package:flutter/material.dart';
import 'package:language_translator/language_translator.dart';

class AppTranslatedTextView extends StatelessWidget {
  const AppTranslatedTextView({
    super.key,
    required this.txt,
    this.style,
  });

  final String txt;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) =>
      Text(txt.translateTxt(context), style: style);
}
