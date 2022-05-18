// Page de paramètres

import 'package:flutter/material.dart';
import 'package:seeme_app/screens/screens.dart';
import '../../models/seeme_pages.dart';

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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsProfileInfo(),
                          ),
                        );
                      },
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/femme5.jpg'),
                          radius: 30,
                        ),
                        title: Text('Hotep Industries'),
                        subtitle: Text('Bomokin Hugues'),
                      ),
                    ),
                    const Divider(),
                    buildItem(context, list[0], 'Account', '', Icons.key),
                    buildItem(context, list[1], 'Notifications', '',
                        Icons.notifications),
                    buildItem(
                        context, list[2], 'Clear storage', '', Icons.storage),
                    buildItem(context, list[3], 'Language', '', Icons.language),
                    buildItem(context, list[4], 'User guide', '', Icons.map),
                    buildItem(context, list[5], 'Help', '', Icons.help),
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
      String subTitle, IconData icon) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subTitle),
      ),
    );
  }
}
