import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class MyActivity extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.myActivity,
      key: ValueKey(SeeMePages.myActivity),
      child: const MyActivity(),
    );
  }

  const MyActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Activity'),
      ),
    );
  }
}
