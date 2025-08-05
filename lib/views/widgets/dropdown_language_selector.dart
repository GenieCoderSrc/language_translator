import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/utils/language_label_util.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';
import 'package:language_translator/view_models/language_selection_cubit/language_selection_cubit.dart';

class DropdownLanguageSelector extends StatelessWidget {
  const DropdownLanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HydratedLanguageCubit, Locale>(
      builder: (context, currentLocale) {
        final cubit = context.read<LanguageSelectionCubit>();
        final languages = cubit.supportedLanguages;

        return DropdownButton<Locale>(
          value: currentLocale,
          onChanged: (Locale? newLocale) {
            if (newLocale != null) {
              context.read<HydratedLanguageCubit>().setLocale(newLocale);
            }
          },
          items: languages
              .map(
                (locale) => DropdownMenuItem(
                  value: locale,
                  child: _buildLanguageItem(locale),
                ),
              )
              .toList(),
        );
      },
    );
  }

  Widget _buildLanguageItem(Locale locale) {
    final flag = LanguageLabelUtil.getFlagEmoji(locale);
    final label = LanguageLabelUtil.getDisplayName(locale);

    return Row(
      children: [
        Text(flag, style: const TextStyle(fontSize: 18)),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
