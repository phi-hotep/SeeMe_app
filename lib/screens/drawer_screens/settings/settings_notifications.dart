// update -->
// New file to display notification

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsNotification extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsNotification,
      key: ValueKey(SeeMePages.settingsNotification),
      child: const SettingsNotification(),
    );
  }

  const SettingsNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
    );
  }
}
