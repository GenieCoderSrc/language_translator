import 'package:flutter/material.dart';
import 'package:language_translator/language_translator.dart';
import 'package:language_translator/utils/app_language.dart';
import 'package:language_translator/utils/translate.dart';
import 'package:language_translator/widgets/app_translated_text_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Translator Example',
      locale: AppLanguage.defaultLanguage,
      supportedLocales: AppLanguage.supportLanguage,
      localizationsDelegates: const [
        Translate.delegate,
        // Add other necessary delegates like GlobalMaterialLocalizations
      ],
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_title'.translateTxt(context)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AppTranslatedTextView(
              txt: 'hello_key',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
