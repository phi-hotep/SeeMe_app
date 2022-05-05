// Change MyActivity to MyFavorites

import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class MyFavorites extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.myFavorites,
      key: ValueKey(SeeMePages.myFavorites),
      child: const MyFavorites(),
    );
  }

  const MyFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My favorites'),
      ),
    );
  }
}
