import 'package:flutter/material.dart';

import '../models/seeme_pages.dart';

class Adverts extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.ads,
      key: ValueKey(SeeMePages.ads),
      child: const Adverts(),
    );
  }

  const Adverts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(color: Colors.blue),
      ),
    );
  }
}
