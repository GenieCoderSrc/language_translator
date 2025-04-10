# language_translator

A lightweight Flutter package for seamlessly integrating multi-language support into your application. This package simplifies translating text and managing locale data for various supported languages, with or without `BuildContext`.

## Features

- Translate strings with or without `BuildContext`
- Custom `Text` widget that auto-translates
- Localization delegate setup
- Built-in support for RTL languages
- Singleton-based utilities for managing languages
- Supports multiple languages out-of-the-box (English, Bengali, Hindi, Arabic, Chinese, French, and many more)

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
    // other delegates
  ],
  supportedLocales: AppLanguage.supportLanguage,
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
'hello_key'.translateWithoutContext();
```

**Using `AppTranslatedTextView` Widget:**
```dart
AppTranslatedTextView(
  txt: 'hello_key',
  style: TextStyle(fontSize: 18),
)
```

## Supported Languages

- English
- Bengali
- Hindi
- Arabic
- Chinese (Simplified & Traditional)
- French
- German
- Japanese
- Korean
- Spanish
- Portuguese
- Russian
- Italian
- Dutch
- Thai
- Turkish
- Kannada
- Tamil
- Telugu
- Malayalam
- Urdu
- Punjabi

## File Structure

```
language_translator/
├── utils/
│   ├── translate.dart
│   ├── util_load_local_file.dart
│   ├── util_language_name.dart
├── app_language.dart
├── app_local_delegate.dart
├── extension/
│   └── string_extensions.dart
├── widgets/
│   └── app_translated_text_view.dart
```

## Contributing

Feel free to open issues or submit PRs for improvements, additional language support, or feature suggestions.

## License

[MIT](LICENSE)

#   l a n g u a g e _ t r a n s l a t o r  
 