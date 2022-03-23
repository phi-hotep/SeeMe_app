import 'package:flutter/material.dart';
import 'package:seeme_app/ui/ads.dart';
import 'package:seeme_app/ui/ambassador.dart';
import 'package:seeme_app/ui/home.dart';
import 'package:seeme_app/ui/shop.dart';
import 'seemetheme.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _itemSelected = 0;
  static List<Widget> pages = <Widget>[
    const Home(),
    const Shop(),
    const Adverts(),
    const Ambassador()
  ];

  void _changeItem(int index) {
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_itemSelected],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelected,
          onTap: _changeItem,
          type: BottomNavigationBarType.fixed,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.speaker_rounded), label: 'Ads'),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), label: 'Ambassador'),
          ],
        ),
      ),
    );
  }
}
