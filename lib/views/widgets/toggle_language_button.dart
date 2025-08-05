import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';

class ToggleLanguageButton extends StatelessWidget {
  final Locale first;
  final Locale second;

  const ToggleLanguageButton({
    super.key,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HydratedLanguageCubit, Locale>(
      builder: (context, state) {
        final isFirst = state.languageCode == first.languageCode;
        final toggleLabel = isFirst
            ? '${first.languageCode.toUpperCase()} → ${second.languageCode.toUpperCase()}'
            : '${second.languageCode.toUpperCase()} → ${first.languageCode.toUpperCase()}';

        return ElevatedButton(
          onPressed: () {
            context.read<HydratedLanguageCubit>().toggle(first, second);
          },
          child: Text(toggleLabel),
        );
      },
    );
  }
}
