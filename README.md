# language\_translator

A lightweight Flutter package for seamlessly integrating multi-language support into your application. This package simplifies translating text and managing locale data for various supported languages, with or without `BuildContext`.

## Features

* Translate strings with or without `BuildContext`
* Custom `Text` widget that auto-translates
* Localization delegate setup
* Built-in support for RTL languages
* Singleton-based utilities for managing languages
* Supports 80+ languages out-of-the-box
* Persisted language state with `HydratedLanguageCubit`
* UI-only language selection with `LanguageSelectionCubit`
* Searchable language picker with modal bottom sheet
* Directionality support with `AppLanguageBuilder`
* Clean architecture using `BlocProvider` and `get_it`

## Getting Started

### Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  language_translator: <latest_version>
```

### Setup

1. Add your language JSON files to your assets:

```yaml
flutter:
  assets:
    - assets/locale/en.json
    - assets/locale/bn.json
    # Add more as needed
```

2. Register the localization delegate in your `MaterialApp`:

```dart
MaterialApp(
  localizationsDelegates: const [
    Translate.delegate,
    ...GlobalMaterialLocalizations.delegates,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: AppLanguage.supportedLanguages,
  locale: AppLanguage.defaultLanguage,
  // ...
)
```

### Translate Text

**Using `BuildContext`:**

```dart
Text('hello_key'.translateTxt(context));
```

**Without `BuildContext`:**

```dart
final String helloTxt = 'hello_key'.translateWithoutContext();
```

**Using `AppTranslatedTextView` Widget:**

```dart
AppTranslatedTextView(
  txt: 'hello_key',
  style: TextStyle(fontSize: 18),
)
```

## Language State Management

* **HydratedLanguageCubit**: Persist language setting between app launches.
* **LanguageSelectionCubit**: Allow temporary language preview/selection in UI.
* Registered via `get_it` for DI.
* Provided via `BlocProvider` for clean integration.

```dart
BlocProvider<HydratedLanguageCubit>(
  create: (_) => sl<HydratedLanguageCubit>(),
),
```

## Directionality

Use `AppLanguageBuilder` to wrap your app shell:

```dart
AppLanguageBuilder(
  child: MyMaterialApp(),
)
```

## Searchable Language Picker

Show a searchable modal bottom sheet:

```dart
showModalBottomSheet(
  context: context,
  builder: (_) => LanguagePickerBottomSheet(),
);
```

## Toggle Between Locales

Use the `toggle(Locale a, Locale b)` method from `HydratedLanguageCubit`:

```dart
context.read<HydratedLanguageCubit>().toggle(Locale('en'), Locale('bn'));
```

## Supported Languages

This package supports **80+ languages**, including all officially supported Flutter localizations:

* Afrikaans, Amharic, Arabic, Azerbaijani, Belarusian, Bengali, Bosnian, Catalan, Czech, Welsh, Danish, German, Greek, English (US/UK), Spanish, Estonian, Basque, Persian, Finnish, French, Galician, Gujarati, Hebrew, Hindi, Croatian, Hungarian, Armenian, Indonesian, Icelandic, Italian, Japanese, Georgian, Kazakh, Khmer, Kannada, Korean, Kyrgyz, Lao, Lithuanian, Latvian, Macedonian, Malayalam, Mongolian, Marathi, Malay, Burmese, Nepali, Dutch, Norwegian, Odia, Punjabi, Polish, Pashto, Portuguese (all variants), Romanian, Russian, Sindhi, Sinhala, Slovak, Slovenian, Albanian, Serbian, Swedish, Swahili, Tamil, Telugu, Thai, Turkmen, Turkish, Tatar, Ukrainian, Urdu, Uzbek, Vietnamese, Chinese (Simplified, China, Taiwan), Zulu

## File Structure

```
language_translator/
├── assets/
│   └── supported_locales.dart
├── config/
│   ├── bloc_provider/
│   │   └── language_setting_bloc_provider.dart
│   └── dependency_injection/
│       └── language_setting_get_it_register.dart
├── extension/
│   ├── locale_extensions.dart
│   ├── locale_list_sorting.dart
│   └── translate_string_extension.dart
├── language/
│   ├── app_language.dart
│   ├── app_language_config.dart
│   └── i_language_config.dart
├── utils/
│   ├── translate.dart
│   ├── app_local_delegate.dart
│   ├── util_load_local_file.dart
│   └── language_label_util.dart
├── view_models/
│   ├── hydrated_language_cubit/
│   │   └── hydrated_language_cubit.dart
│   └── language_selection_cubit/
│       └── language_selection_cubit.dart
├── views/
│   └── screens
│       ├── app_language_builder.dart
│   └── widgets/
│       ├── app_translated_text_view.dart
│       ├── dropdown_language_selector.dart
│       ├── modal_language_selector.dart
│       ├── searchable_language_picker.dart
│       └── toggle_language_button.dart
```

## Contributing

Feel free to open issues or submit PRs for improvements, additional language support, or feature suggestions.

## License

[MIT](LICENSE)
