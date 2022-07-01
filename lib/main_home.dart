// Page dans laquelle le bottomNavigationBar est implémenté

import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:seeme_app/models/seeme_pages.dart';
import 'package:seeme_app/screens/screens.dart';
import 'package:seeme_app/state/state.dart';

const _homeKey = PageStorageKey('home_key');
const _shopKey = PageStorageKey('shop_key');
const _adsKey = PageStorageKey('ads_key');
const _ambassadorKey = PageStorageKey('ambassador_key');

class MainHome extends StatefulWidget {
  static MaterialPage page(String title, int tab) {
    return MaterialPage(
      name: SeeMePages.home,
      key: ValueKey(SeeMePages.home),
      child: MainHome(title: title, tab: tab),
    );
  }

  const MainHome({Key? key, required this.title, required this.tab})
      : super(key: key);
  final String title;
  final int tab;

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  late int _selectedTab = widget.tab;
  var home, shop, ads, ambassador;
  List page = [];

  @override
  void initState() {
    super.initState();
    home = Home(key: _homeKey, drawerOpen: openDrawer);
    shop = Shop(key: _shopKey, drawerOpen: openDrawer);
    ads = Adverts(key: _adsKey, drawerOpen: openDrawer);
    ambassador = Ambassador(key: _ambassadorKey, drawerOpen: openDrawer);
    page = [home, shop, ads, ambassador];
  }

  // Methode permettant d'ouvrir le menu (l'espace de l'utilisateur) -->
  void openDrawer() {
    final currentTab = widget.tab.toString();
    context.goNamed(SeeMePages.drawer, params: {'tab': currentTab});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildDrawer(),
        buildPage(context),
      ],
    );
  }

// Construire la page principale -->
  Widget buildPage(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        child: Scaffold(
          body: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
                return FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: page[_selectedTab]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedTab,
            onTap: (index) {
              setState(() {
                _selectedTab = index;
                switch (_selectedTab) {
                  case 0:
                    context.goNamed(SeeMePages.home, params: {'tab': '0'});
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToTab(index);
                    break;
                  case 1:
                    context.goNamed(SeeMePages.home, params: {'tab': '1'});
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToTab(index);
                    break;
                  case 2:
                    context.goNamed(SeeMePages.home, params: {'tab': '2'});
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToTab(index);
                    break;
                  case 3:
                    context.goNamed(SeeMePages.home, params: {'tab': '3'});
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToTab(index);
                    break;
                }
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.campaign,
                    size: 30,
                  ),
                  label: 'Ads'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), label: 'Ambassador'),
            ],
          ),
        ),
      ),
    );
  }

// Construire la page de menu -->
  Widget buildDrawer() {
    return const SafeArea(child: DrawerWidget());
  }
}
