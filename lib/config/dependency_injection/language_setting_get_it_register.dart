// language_setting_get_it_register.dart

import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:language_translator/language/app_language_config.dart';
import 'package:language_translator/language/i_language_config.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';
import 'package:language_translator/view_models/language_selection_cubit/language_selection_cubit.dart';

void languageSettingGetItRegister() {
  /// -------- Language Setting Services --------
  sl.registerLazySingleton<ILanguageConfig>(() => AppLanguageConfig());

  /// -------- Language Setting (Hydrated & UI) --------
  sl.registerLazySingleton(() => HydratedLanguageCubit());
  sl.registerFactory(() => LanguageSelectionCubit());
}
