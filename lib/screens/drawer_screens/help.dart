import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class Help extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.help,
      key: ValueKey(SeeMePages.help),
      child: const Help(),
    );
  }

  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
    );
  }
}
