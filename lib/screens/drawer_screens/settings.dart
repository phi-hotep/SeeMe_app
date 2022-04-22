import 'package:flutter/material.dart';
import 'package:seeme_app/screens/drawer_screens/settings_profile.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                backgroundImage: AssetImage('assets/images/femme5.jpg'),
                radius: 30,
              ),
              title: Text('Hotep Industries'),
              subtitle: Text('Bomokin Hugues'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.store),
              title: Text('Business Tools'),
              subtitle: Text('Profile, catalog, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.key),
              title: Text('Acount'),
              subtitle: Text('Privacy, security, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chats'),
              subtitle: Text('Theme, wallpaper, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              subtitle: Text('Message, group, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.storage),
              title: Text('Storage and data'),
              subtitle: Text('Network usage, auto-download, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              subtitle: Text('Help center, contact us, etc.'),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.group),
              title: Text('Invite a contact'),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
