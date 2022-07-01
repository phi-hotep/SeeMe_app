// La page du compte de l'utilisateur

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/state/state.dart';

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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Ici le theme de l'application est réinitialisé à la valeur par defaut -->
            Provider.of<ThemeManager>(context, listen: false).initialTheme();
            // Ici l'utilisateur supprime son compte -->
            Provider.of<AppStateManager>(context, listen: false).logout();
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
