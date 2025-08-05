import 'package:flutter/material.dart';

import 'searchable_language_picker.dart';

class ModalLanguageSelector extends StatelessWidget {
  const ModalLanguageSelector({super.key});

  static Future<void> show(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const FractionallySizedBox(
        heightFactor: 0.9,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SearchableLanguagePicker(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () => show(context),
      icon: const Icon(Icons.language),
      label: const Text('Change Language'),
    );
  }
}
