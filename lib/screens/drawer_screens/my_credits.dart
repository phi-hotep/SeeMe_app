import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class MyCredits extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.myCredits,
      key: ValueKey(SeeMePages.myCredits),
      child: const MyCredits(),
    );
  }

  const MyCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My credits'),
      ),
    );
  }
}
