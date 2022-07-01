// Page de menu de l'utilisateur

//2- Move 'delete account' from here to settings_account page

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../models/seeme_pages.dart';
import 'package:seeme_app/state/state.dart';
import 'package:seeme_app/models/models.dart';
import 'package:seeme_app/data/data.dart';
import 'package:seeme_app/components/components.dart';

class DrawerWidget extends StatelessWidget {
  static CustomTransitionPage page() {
    return CustomTransitionPage(
        key: ValueKey(SeeMePages.drawer),
        name: SeeMePages.drawer,
        child: const DrawerWidget(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SharedAxisTransition(
            transitionType: SharedAxisTransitionType.horizontal,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        });
  }

  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Liste des noms des pages -->
    var list = <String>[
      SeeMePages.business,
      SeeMePages.myFavorites,
      SeeMePages.myStats,
      SeeMePages.shopFollowed,
      SeeMePages.myCredits,
      SeeMePages.inviteFriend
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
                          buildSwitchBusinessButton(),
                          const Divider(),
                          buildDrawerItem(
                              context,
                              list[1],
                              DrawerData.listDrawerItem[1].icon,
                              DrawerData.listDrawerItem[1].title),
                          buildDrawerItem(
                              context,
                              list[2],
                              DrawerData.listDrawerItem[2].icon,
                              DrawerData.listDrawerItem[2].title),
                          buildDrawerItem(
                              context,
                              list[3],
                              DrawerData.listDrawerItem[3].icon,
                              DrawerData.listDrawerItem[3].title),
                          buildDrawerItem(
                              context,
                              list[4],
                              DrawerData.listDrawerItem[4].icon,
                              DrawerData.listDrawerItem[4].title),
                          const Divider(),
                          buildDrawerItem(
                              context,
                              list[5],
                              DrawerData.listDrawerItem[5].icon,
                              DrawerData.listDrawerItem[5].title),
                          const SizedBox(
                            height: 40,
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

// Construire le button switch pour passer en mode business -->

  Consumer<BusinessManager> buildSwitchBusinessButton() {
    return Consumer<BusinessManager>(
      builder: (context, buisnessManager, child) {
        return SwitchListTile.adaptive(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
          title: Text(DrawerData.listDrawerItem[0].title),
          secondary: DrawerData.listDrawerItem[0].icon,
          value: buisnessManager.isSwitchToBusinessMode,
          onChanged: (val) {
            Provider.of<BusinessManager>(context, listen: false).switchMode =
                val;
            var snackbarBusiness = const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Business mode',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(milliseconds: 700),
            );
            var snackbarsimple = const SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                'Simple mode',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(milliseconds: 700),
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

// Construire le profile en tête de la page Drawer -->

  Widget buildHeaderProfile(BuildContext context) {
    return Positioned(
      top: 50,
      left: 10,
      child: Container(
        height: 100,
        width: 250,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Ici on recupère l'index courant:
              // home|shop|ads|ambassador -->
              final currentTab =
                  Provider.of<AppStateManager>(context, listen: false)
                      .getSelectedTab
                      .toString();
              context.goNamed(SeeMePages.settingsProfile,
                  params: {'tab': currentTab});
            },
            child: Row(children: [
              const CustomCirleAvatar(img: 'assets/images/femme5.jpg', rad: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Hotep Industries'),
                  Text('Bomokin Hugues '),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

// Construire la liste des boutons à l'en-tête de la page Drawer -->

  Widget buildActionButtons(BuildContext context) {
    return Row(
      children: [
        // if ((Provider.of<BusinessManager>(context, listen: false)
        //     .isSwitchToBusinessMode))
        Container(
          constraints: const BoxConstraints.expand(width: 70, height: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                for (double i = 1; i < 5; i++)
                  BoxShadow(
                    color: Colors.blueAccent.shade700,
                    blurRadius: 3 * i,
                  ),
                for (double i = 1; i < 5; i++)
                  BoxShadow(
                      spreadRadius: -1,
                      color: Colors.blueAccent.shade700,
                      blurRadius: 3 * i,
                      blurStyle: BlurStyle.outer),
              ]),
          child: const Text('SeeMe pro'),
        ),
        IconButton(
          onPressed: () {
            // Ici on recupère l'index courant:
            // home|shop|ads|ambassador -->
            final currentTab =
                Provider.of<AppStateManager>(context, listen: false)
                    .getSelectedTab
                    .toString();
            context.goNamed(SeeMePages.settings, params: {'tab': currentTab});
          },
          icon: DrawerData.listDrawerItem[6].icon,
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
    BuildContext context,
    String route,
    Widget icon,
    String text,
  ) {
    return InkWell(
      onTap: () {
        // Ici on recupère l'index courant:
        // home|shop|ads|ambassador -->
        final currentTab = Provider.of<AppStateManager>(context, listen: false)
            .getSelectedTab
            .toString();
        context.goNamed(route, params: {'tab': currentTab});
      },
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        leading: icon,
        title: Text(text),
      ),
    );
  }
}
