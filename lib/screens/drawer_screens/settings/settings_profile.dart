// Page de profile

// update -->
// moved to /screens/drawer_screens/settings folder
import 'package:flutter/material.dart';
import 'package:seeme_app/screens/screens.dart';
import 'package:seeme_app/components/components.dart' show IconButtonWidget;

class SettingsProfileInfo extends StatelessWidget {
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
                          if (f) buildBusinessItemInformation(),
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
      buildItem(Icons.person, 'Phi Hotep', Icons.edit),
      buildItem(Icons.man, 'male', Icons.edit),
      buildItem(Icons.cake, '06-05-1989', Icons.edit),
      buildItem(Icons.code, 'Invitaion code', Icons.edit),
      buildItem(Icons.settings, 'Settings', Icons.edit),
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
          buildItem(Icons.store, 'SeeMe shop', Icons.edit),
          buildItem(Icons.category, 'Art & entertainment', Icons.edit),
          buildItem(Icons.location_on, 'Yaoundé', Icons.edit),
          buildItem(Icons.timeline, '7h-21h', Icons.edit),
          buildItem(Icons.mail, 'mail@seeme.com', Icons.edit),
          buildItem(Icons.web, 'http://www.seeme.cm', Icons.edit),
          buildItem(Icons.phone, '698564812', Icons.edit),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

// Helper method pour construire les différents éléments -->

  Widget buildItem(IconData iconlead, String name, IconData iconTrail) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: Icon(iconlead),
        title: Text(name),
        trailing: Icon(iconTrail),
      ),
    );
  }
}
