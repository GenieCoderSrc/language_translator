import 'package:flutter/material.dart';

import 'package:language_translator/language_translator.dart';

class AppTranslatedTextView extends StatelessWidget {
  const AppTranslatedTextView({
    super.key,
    required this.txt,
    this.style,
    this.textAlign,
    this.textDirection,
  });

  final String txt;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) => Text(
    txt.translateTxt(context),
    style: style,
    textAlign: textAlign,
    textDirection: textDirection,
  );
}
