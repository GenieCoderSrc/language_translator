# Changelog

All notable changes to this project will be documented in this file.

## 0.0.4
- Initial support for basic language codes:
    - English (`en`)
    - Hindi (`hi`)
    - Bengali (`bn`)
    - Punjabi (`pa`)
    - Spanish (`es`)
- Extended `supportLanguage` list to include all languages supported by `flutter_localizations`.
- Updated `getGlobalLanguageName(String code)` function to return human-readable names for all supported languages using ISO 639-1 codes.
- Included region variants like `en_US`, `pt_BR`, and `zh_TW` for better locale support.

## 0.0.3+1
- Use `navigation_without_context` 0.0.3+1
 

## 0.0.3
- Upgrade Dependencies.
- Included `textAlign`, `textDirection` in the `AppTranslatedTextView`
  

## 0.0.2
- Upgrade Dependencies.

## 0.0.1
### Initial release
- Added support for multiple languages with default fallback.
- Translate strings with or without BuildContext.
- Included AppTranslatedTextView widget for simplified UI usage.
- Added utility for RTL language detection.
- JSON-based localization with asset loading.
- Localization delegate integration.
- Utility class for global language name access.
- Singleton pattern for core utilities.
- Supports 20+ languages out-of-the-box.
