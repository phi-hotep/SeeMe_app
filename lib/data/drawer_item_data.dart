//Change activity to favorite item
// Remove settings item

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart' show DrawerItemModel;
import 'package:seeme_app/screens/screens.dart';

class DrawerItemsData {
  static var favorites = const DrawerItemModel(
    title: 'My favorites',
    subTitle: 'Browse your favorites products',
    icon: Icon(Icons.favorite),
    drawerPage: MyFavorites(),
  );
  static var stats = const DrawerItemModel(
    title: 'My stats',
    subTitle: 'Look about your stats',
    icon: Icon(Icons.insert_chart_outlined),
    drawerPage: MyStats(),
  );
  static var shopFollowed = const DrawerItemModel(
    title: 'Shop followed',
    subTitle: 'Shops you are following',
    icon: Icon(Icons.follow_the_signs_sharp),
    drawerPage: ShopFollowed(),
  );
  static var credits = const DrawerItemModel(
    title: 'My credits',
    subTitle: '',
    icon: Icon(Icons.monetization_on),
    drawerPage: MyCredits(),
  );

  static var inviteFriend = const DrawerItemModel(
    title: 'Invite friends',
    subTitle: '',
    icon: Icon(Icons.mobile_friendly),
    drawerPage: InviteFriends(),
  );

  static final listItem = <DrawerItemModel>[
    favorites,
    stats,
    shopFollowed,
    credits,
    inviteFriend,
  ];
}
