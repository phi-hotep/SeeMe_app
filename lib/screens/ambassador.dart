// Page Gestion des ambassadeurs

import 'package:flutter/material.dart';
import 'package:seeme_app/models/seeme_pages.dart';

final _pageStorageBucketAmbassador = PageStorageBucket();
const _ambassadorPageStorageKey = PageStorageKey<String>('adverts');

class Ambassador extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.ambassador,
      key: ValueKey(SeeMePages.ambassador),
      child: const Ambassador(),
    );
  }

  const Ambassador({Key? key, this.drawerOpen}) : super(key: key);
  final VoidCallback? drawerOpen;

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _pageStorageBucketAmbassador,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ambassador'),
          leading: IconButton(
            onPressed: drawerOpen,
            icon: const Icon(Icons.person),
          ),
        ),
        body: const Center(
          child: Text('Ambassador'),
        ),
      ),
    );
  }
}
