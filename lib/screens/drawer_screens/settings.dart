// Page de paramètres

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/data/data.dart';
import 'package:seeme_app/state/app_state_manager.dart';
import '../../models/seeme_pages.dart';
import 'package:seeme_app/models/models.dart';

class Settings extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settings,
      key: ValueKey(SeeMePages.settings),
      child: const Settings(),
    );
  }

  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = <String>[
      SeeMePages.settingsProfile,
      SeeMePages.settingsAccount,
      SeeMePages.settingsNotification,
      SeeMePages.settingsClearStorage,
      SeeMePages.settingsLanguage,
      SeeMePages.settingsUserGuide,
      SeeMePages.settingsHelp
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: SingleChildScrollView(
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildItem(
                        context,
                        list[0],
                        SettingsData.listSettingsItem[0].title,
                        SettingsData.listSettingsItem[0].subTitle,
                        SettingsData.listSettingsItem[0].icon),
                    const Divider(),
                    buildItem(
                        context,
                        list[1],
                        SettingsData.listSettingsItem[1].title,
                        SettingsData.listSettingsItem[1].subTitle,
                        SettingsData.listSettingsItem[1].icon),
                    buildItem(
                        context,
                        list[2],
                        SettingsData.listSettingsItem[2].title,
                        SettingsData.listSettingsItem[2].subTitle,
                        SettingsData.listSettingsItem[2].icon),
                    buildItem(
                        context,
                        list[3],
                        SettingsData.listSettingsItem[3].title,
                        SettingsData.listSettingsItem[3].subTitle,
                        SettingsData.listSettingsItem[3].icon),
                    buildItem(
                        context,
                        list[4],
                        SettingsData.listSettingsItem[4].title,
                        SettingsData.listSettingsItem[4].subTitle,
                        SettingsData.listSettingsItem[4].icon),
                    buildItem(
                        context,
                        list[5],
                        SettingsData.listSettingsItem[5].title,
                        SettingsData.listSettingsItem[5].subTitle,
                        SettingsData.listSettingsItem[5].icon),
                    buildItem(
                        context,
                        list[6],
                        SettingsData.listSettingsItem[6].title,
                        SettingsData.listSettingsItem[6].subTitle,
                        SettingsData.listSettingsItem[6].icon),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, String route, String title,
      String subTitle, Widget icon) {
    return InkWell(
      onTap: () {
        final currentTab = Provider.of<AppStateManager>(context, listen: false)
            .getSelectedTab
            .toString();
        context.goNamed(route, params: {'tab': currentTab});
      },
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: icon,
        title: Text(title),
        subtitle: Text(
          subTitle,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
