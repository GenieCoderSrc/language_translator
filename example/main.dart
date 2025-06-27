import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:language_translator/language_translator.dart';

final sl = GetIt.instance;

void main() {
  // Optional: Initialize language configuration with custom defaults
  initializeLanguageConfig(
    defaultLanguageCode: 'bn',
    supportedLocales: [Locale('en'), Locale('bn')],
  );

  // Register DI and BLoCs
  languageSettingGetItRegister();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: languageSettingBlocProviders,
      child: AppLanguageBuilder(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: AppLanguage.defaultLanguage,
          supportedLocales: AppLanguage.supportedLanguages,
          localizationsDelegates: const [
            Translate.delegate,
            ...GlobalMaterialLocalizations.delegates,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('app_title'.translateTxt(context))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: AppTranslatedTextView(
              txt: 'hello_key',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 16),
          ToggleLanguageButton(first: Locale('en'), second: Locale('bn')),
        ],
      ),
    );
  }
}
