import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class ShopFollowed extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.shopFollowed,
      key: ValueKey(SeeMePages.shopFollowed),
      child: const ShopFollowed(),
    );
  }

  const ShopFollowed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop followed'),
      ),
    );
  }
}
