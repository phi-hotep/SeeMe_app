// Page de paramètres

// New update 21/05/2022-->
// 1) add subtitles under items

import 'package:flutter/material.dart';
import 'package:seeme_app/data/data.dart';
import 'package:seeme_app/screens/screens.dart';
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
    var list = const <Widget>[
      SettingsAccount(),
      SettingsNotification(),
      SettingsClearStorage(),
      SettingsLanguage(),
      SettingsUserGuide(),
      SettingsHelp()
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
                        const SettingsProfileInfo(),
                        SettingsData.listSettingsItem[0].title,
                        SettingsData.listSettingsItem[0].subTitle,
                        SettingsData.listSettingsItem[0].icon),
                    const Divider(),
                    buildItem(
                        context,
                        list[0],
                        SettingsData.listSettingsItem[1].title,
                        SettingsData.listSettingsItem[1].subTitle,
                        SettingsData.listSettingsItem[1].icon),
                    buildItem(
                        context,
                        list[1],
                        SettingsData.listSettingsItem[2].title,
                        SettingsData.listSettingsItem[2].subTitle,
                        SettingsData.listSettingsItem[2].icon),
                    buildItem(
                        context,
                        list[2],
                        SettingsData.listSettingsItem[3].title,
                        SettingsData.listSettingsItem[3].subTitle,
                        SettingsData.listSettingsItem[3].icon),
                    buildItem(
                        context,
                        list[3],
                        SettingsData.listSettingsItem[4].title,
                        SettingsData.listSettingsItem[4].subTitle,
                        SettingsData.listSettingsItem[4].icon),
                    buildItem(
                        context,
                        list[4],
                        SettingsData.listSettingsItem[5].title,
                        SettingsData.listSettingsItem[5].subTitle,
                        SettingsData.listSettingsItem[5].icon),
                    buildItem(
                        context,
                        list[5],
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

  Widget buildItem(BuildContext context, Widget widget, String title,
      String subTitle, Widget icon) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
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
