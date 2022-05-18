// update -->
// New file to display user account

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsAccount extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsAccount,
      key: ValueKey(SeeMePages.settingsAccount),
      child: const SettingsAccount(),
    );
  }

  const SettingsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
    );
  }
}
