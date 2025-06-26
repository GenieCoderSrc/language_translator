// language_setting_bloc_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';
import 'package:language_translator/view_models/language_selection_cubit/language_selection_cubit.dart';
import 'package:provider/single_child_widget.dart';

// ---- Language Setting Cubit ------
late HydratedLanguageCubit _hydratedLanguageCubit;
late LanguageSelectionCubit _languageSelectionCubit;

void initLanguageSettingBlocProvider() {
  _hydratedLanguageCubit = sl<HydratedLanguageCubit>();
  _languageSelectionCubit = sl<LanguageSelectionCubit>();
}

void disposeLanguageSettingBlocProvider() {
  _hydratedLanguageCubit.close();
  _languageSelectionCubit.close();
}

List<SingleChildWidget> languageSettingBlocProviders = [
  BlocProvider<HydratedLanguageCubit>(
    create: (BuildContext context) => _hydratedLanguageCubit,
  ),
  BlocProvider<LanguageSelectionCubit>(
    create: (BuildContext context) => _languageSelectionCubit,
  ),
];
