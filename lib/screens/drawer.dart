// Page de menu

// Update -->
// settings items has been replaced by an iconbutton
// activity item has been replaced by favorites
// Switch button of business  mode has been added

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/screens/screens.dart';
import 'package:seeme_app/state/theme_manager.dart';
import '../models/seeme_pages.dart';
import '../state/business_manager.dart';

class DrawerWidget extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.drawer,
      key: ValueKey(SeeMePages.drawer),
      child: const DrawerWidget(),
    );
  }

  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of pages to navigate to -->
    var list = const <Widget>[
      Business(),
      MyFavorites(),
      MyStats(),
      ShopFollowed(),
      MyCredits(),
      InviteFriends()
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            expandedHeight: 150,
            actions: [buildActionButtons(context)],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.deepOrange, Colors.orangeAccent]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Stack(children: [
                  buildHeaderProfile(context),
                ]),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          buildDrawerItem(
                            context,
                            list[0],
                            Icons.business,
                            'Business mode',
                            switchBusiness: switchBusinessButton(),
                          ),
                          const Divider(),
                          buildDrawerItem(
                              context, list[1], Icons.favorite, 'My favotites'),
                          buildDrawerItem(
                              context, list[2], Icons.bar_chart, 'My stats'),
                          buildDrawerItem(
                              context,
                              list[3],
                              Icons.store_mall_directory_outlined,
                              'Shop followed'),
                          buildDrawerItem(context, list[4],
                              Icons.attach_money_rounded, 'My credits'),
                          const Divider(),
                          buildDrawerItem(context, list[5], Icons.person_add,
                              'Invite friend'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Logout'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ]),
                      ),
                    ),
                childCount: 1),
          ),
        ],
      ),
    );
  }

// Construire le profile en tête de la page Drawer -->
  Widget buildHeaderProfile(BuildContext context) {
    return Positioned(
      top: 50,
      left: 10,
      child: Container(
        height: 100,
        width: 350,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsProfileInfo(),
                    ),
                  );
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/femme5.jpg'),
                  radius: 50,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsProfileInfo(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Hotep Industries'),
                    Text('Bomokin Hugues '),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Construire la liste des boutons à l'en-tête de la page Drawer -->
  Widget buildActionButtons(BuildContext context) {
    return Row(
      children: [
        AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.red, Colors.blue]),
            ),
            child: const Text('SeeMe Pro'),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Settings(),
              ),
            );
          },
          icon: const Icon(
            Icons.settings,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Provider.of<ThemeManager>(context, listen: false).changeTheme();
          },
          icon: Icon(
            Provider.of<ThemeManager>(context).getTheme
                ? Icons.sunny
                : Icons.brightness_2,
            size: 30,
          ),
        ),
      ],
    );
  }

// Construire les différents éléments de Drawer -->
  Widget buildDrawerItem(
      BuildContext context, Widget widget, IconData icon, String text,
      {Widget? switchBusiness}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: Icon(icon),
        title: Text(text),
        trailing: switchBusiness,
      ),
    );
  }

//  Switch button to business mode -->
  Consumer<BusinessManager> switchBusinessButton() {
    return Consumer<BusinessManager>(
      builder: (context, businessManager, child) {
        return Switch(
          activeColor: Colors.green,
          value: businessManager.isSwitchToBusinessMode,
          onChanged: (val) {
            Provider.of<BusinessManager>(context, listen: false).switchMode =
                val;
            var snackbarBusiness = const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Business mode',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(seconds: 1),
            );
            var snackbarsimple = const SnackBar(
              backgroundColor: Colors.red,
              content:
                  Text('Simple mode', style: TextStyle(color: Colors.white)),
              duration: Duration(seconds: 1),
            );
            if (Provider.of<BusinessManager>(context, listen: false)
                .isSwitchToBusinessMode) {
              ScaffoldMessenger.of(context).showSnackBar(snackbarBusiness);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(snackbarsimple);
            }
          },
        );
      },
    );
  }
}
