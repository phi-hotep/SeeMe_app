// La page d'aide

// update -->
// New file to display help

import 'package:flutter/material.dart';

import '../../../models/seeme_pages.dart';

class SettingsHelp extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsHelp,
      key: ValueKey(SeeMePages.settingsHelp),
      child: const SettingsHelp(),
    );
  }

  const SettingsHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            buildItem(Icons.privacy_tip, 'Privacy policy'),
            buildItem(Icons.file_open, 'Terms'),
            buildItem(Icons.info, 'App information'),
            buildItem(Icons.rate_review, 'Rate the app'),
            buildItem(Icons.contact_page, 'Contact us'),
          ],
        ),
      ),
    );
  }

  Widget buildItem(IconData iconlead, String text) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: Icon(iconlead),
        title: Text(text),
      ),
    );
  }
}
