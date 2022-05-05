// New file to display business page

import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class Business extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.business,
      key: ValueKey(SeeMePages.business),
      child: const Business(),
    );
  }

  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business'),
      ),
    );
  }
}
