// update -->
// New file to display language settings

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsLanguage extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsLanguage,
      key: ValueKey(SeeMePages.settingsLanguage),
      child: const SettingsLanguage(),
    );
  }

  const SettingsLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
    );
  }
}
