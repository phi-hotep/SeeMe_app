// Page de publicité

import 'package:flutter/material.dart';
import 'package:seeme_app/models/seeme_pages.dart';

final _pageStorageBucketAds = PageStorageBucket();
const _adsPageStorageKey = PageStorageKey<String>('adverts');

class Adverts extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.ads,
      key: ValueKey(SeeMePages.ads),
      child: const Adverts(),
    );
  }

  const Adverts({Key? key, this.drawerOpen}) : super(key: key);
  final VoidCallback? drawerOpen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Advertising'),
        leading: IconButton(
          onPressed: drawerOpen,
          icon: const Icon(Icons.person),
        ),
      ),
      body: const Center(
        child: Text('Advertising'),
      ),
    );
  }
}
