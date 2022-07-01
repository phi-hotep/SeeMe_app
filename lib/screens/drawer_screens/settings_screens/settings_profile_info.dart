// Page de profile

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/components/components.dart' show IconButtonWidget;
import 'package:seeme_app/models/models.dart';
import 'package:seeme_app/screens/screens.dart';
import 'package:seeme_app/state/state.dart';
import 'package:seeme_app/data/data.dart';

class SettingsProfileInfo extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsProfile,
      key: ValueKey(SeeMePages.settingsProfile),
      child: const SettingsProfileInfo(),
    );
  }

  const SettingsProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool f = true;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Hero(
                  tag: 'img',
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsProfileImage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/femme5.jpg',
                      ),
                      radius: 20,
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              IconButtonWidget(
                  icon: const Icon(Icons.photo_camera), function: () {})
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          if (Provider.of<BusinessManager>(context,
                                  listen: false)
                              .isSwitchToBusinessMode)
                            buildBusinessItemInformation(),
                          buildUserItemInformation(),
                        ]),
                      ),
                    ),
                childCount: 1),
          ),
        ],
      ),
    );
  }

// Construire les éléments d'information de l'utilisateur -->
  Column buildUserItemInformation() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 10),
      const Text(
        'User informations',
        style: TextStyle(color: Colors.yellow),
      ),
      const SizedBox(height: 10),
      buildItem(SettingsProfileInfoData.listInfoItem[7].icon,
          SettingsProfileInfoData.listInfoItem[7].title,
          iconTrail: Icons.edit),
      buildItem(SettingsProfileInfoData.listInfoItem[8].icon,
          SettingsProfileInfoData.listInfoItem[8].title,
          iconTrail: Icons.edit),
      buildItem(SettingsProfileInfoData.listInfoItem[9].icon,
          SettingsProfileInfoData.listInfoItem[9].title,
          iconTrail: Icons.edit),
      buildItem(SettingsProfileInfoData.listInfoItem[10].icon,
          SettingsProfileInfoData.listInfoItem[10].title,
          iconTrail: Icons.edit),
      buildItem(SettingsProfileInfoData.listInfoItem[11].icon,
          SettingsProfileInfoData.listInfoItem[11].title),
      const SizedBox(height: 10),
    ]);
  }

// Construire les éléments business si l'utilisateur est passé en mode business -->

  Widget buildBusinessItemInformation() {
    return Card(
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text('Business informations',
              style: TextStyle(color: Colors.yellow)),
          const SizedBox(height: 10),
          buildItem(SettingsProfileInfoData.listInfoItem[0].icon,
              SettingsProfileInfoData.listInfoItem[0].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[1].icon,
              SettingsProfileInfoData.listInfoItem[1].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[2].icon,
              SettingsProfileInfoData.listInfoItem[2].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[3].icon,
              SettingsProfileInfoData.listInfoItem[3].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[4].icon,
              SettingsProfileInfoData.listInfoItem[4].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[5].icon,
              SettingsProfileInfoData.listInfoItem[5].title,
              iconTrail: Icons.edit),
          buildItem(SettingsProfileInfoData.listInfoItem[6].icon,
              SettingsProfileInfoData.listInfoItem[6].title,
              iconTrail: Icons.edit),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

// Helper method pour construire les différents éléments -->

  Widget buildItem(Widget icon, String name, {IconData? iconTrail}) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: icon,
        title: Text(name),
        trailing: Icon(iconTrail),
      ),
    );
  }
}
