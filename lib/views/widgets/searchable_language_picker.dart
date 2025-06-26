import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/language/app_language.dart';
import 'package:language_translator/utils/language_label_util.dart';
import 'package:language_translator/view_models/hydrated_language_cubit/hydrated_language_cubit.dart';

class SearchableLanguagePicker extends StatefulWidget {
  const SearchableLanguagePicker({super.key});

  @override
  State<SearchableLanguagePicker> createState() =>
      _SearchableLanguagePickerState();
}

class _SearchableLanguagePickerState extends State<SearchableLanguagePicker> {
  final TextEditingController _searchController = TextEditingController();
  List<Locale> filtered = AppLanguage.supportedLanguages;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filter);
  }

  void _filter() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filtered =
          AppLanguage.supportedLanguages.where((locale) {
            final name = LanguageLabelUtil.getDisplayName(locale).toLowerCase();
            return name.contains(query);
          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final current = context.watch<HydratedLanguageCubit>().state;

    return Column(
      children: [
        TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search language...',
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            itemCount: filtered.length,
            itemBuilder: (_, index) {
              final locale = filtered[index];
              final selected =
                  locale.languageCode == current.languageCode &&
                  (locale.countryCode == null ||
                      locale.countryCode == current.countryCode);

              return ListTile(
                title: Text(LanguageLabelUtil.getDisplayName(locale)),
                leading: Text(LanguageLabelUtil.getFlagEmoji(locale)),
                trailing: selected ? const Icon(Icons.check) : null,
                onTap: () {
                  context.read<HydratedLanguageCubit>().setLocale(locale);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
