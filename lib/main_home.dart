import 'package:flutter/material.dart';
import 'package:seeme_app/screens/ads.dart';
import 'package:seeme_app/screens/ambassador.dart';
import 'package:seeme_app/screens/home.dart';
import 'package:seeme_app/screens/shop.dart';
import 'package:provider/provider.dart';
import 'state/state.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  static List<Widget> pages = <Widget>[
    const Home(),
    const Shop(),
    const Adverts(),
    const Ambassador()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return SafeArea(
        child: Scaffold(
          body: pages[tabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabManager.selectedTab,
            onTap: (index) {
              tabManager.goToTab(index);
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
      );
    });
  }
}
