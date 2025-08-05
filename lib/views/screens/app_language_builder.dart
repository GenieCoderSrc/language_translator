import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/utils/language_label_util.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';

class AppLanguageBuilder extends StatelessWidget {
  final Widget child;

  const AppLanguageBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HydratedLanguageCubit, Locale>(
      builder: (context, locale) {
        final direction = LanguageLabelUtil.isRtl(locale)
            ? TextDirection.rtl
            : TextDirection.ltr;

        debugPrint(
          'AppLanguageBuilder | build | HydratedLanguageCubit locale languageCode: ${locale.languageCode} countryCode: ${locale.countryCode} '
          'TextDirection: ${direction.name}',
        );

        return Directionality(textDirection: direction, child: child);
      },
    );
  }
}
