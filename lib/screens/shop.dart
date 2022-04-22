import 'package:flutter/material.dart';

import '../models/seeme_pages.dart';

class Shop extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.shop,
      key: ValueKey(SeeMePages.shop),
      child: const Shop(),
    );
  }

  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(color: Colors.green),
    ));
  }
}
