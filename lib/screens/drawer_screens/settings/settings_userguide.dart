// update -->
// New file to display user guide

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsUserGuide extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsUserGuide,
      key: ValueKey(SeeMePages.settingsUserGuide),
      child: const SettingsUserGuide(),
    );
  }

  const SettingsUserGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User guide'),
      ),
    );
  }
}
