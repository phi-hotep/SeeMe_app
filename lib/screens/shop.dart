// La page boutique de l'utilisateur

//Update: add leading icon on appbar to navigate to drawer

import 'package:flutter/material.dart';
import 'package:seeme_app/models/seeme_pages.dart';

final _pageStorageBucketShop = PageStorageBucket();
const _shopPageStorageKey = PageStorageKey<String>('shop');

class Shop extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.shop,
      key: ValueKey(SeeMePages.shop),
      child: const Shop(),
    );
  }

  const Shop({Key? key, this.drawerOpen}) : super(key: key);
  final VoidCallback? drawerOpen;

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _pageStorageBucketShop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shop'),
          centerTitle: true,
          leading: IconButton(
            onPressed: drawerOpen,
            icon: const Icon(Icons.person),
          ),
        ),
        body: ListView.builder(
            key: _shopPageStorageKey,
            itemCount: 40,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item number $index'),
                textColor: Colors.red,
              );
            }),
      ),
    );
  }
}
