import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class MyStats extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.myStats,
      key: ValueKey(SeeMePages.myStats),
      child: const MyStats(),
    );
  }

  const MyStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My stats'),
      ),
    );
  }
}
