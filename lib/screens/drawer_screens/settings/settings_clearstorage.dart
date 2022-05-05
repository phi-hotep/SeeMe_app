// update -->
// New file to clear files on storage

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsClearStorage extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsClearStorage,
      key: ValueKey(SeeMePages.settingsClearStorage),
      child: const SettingsClearStorage(),
    );
  }

  const SettingsClearStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clear storage'),
      ),
    );
  }
}
