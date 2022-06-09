import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

class DrawerData {
  static var businessMode = ItemListileModel(
    'Business mode',
    '',
    const Icon(Icons.business),
  );
  static var myFavorites = ItemListileModel(
    'My favorites',
    '',
    const Icon(Icons.favorite),
  );
  static var myStats = ItemListileModel(
    'My stats',
    '',
    const Icon(Icons.bar_chart),
  );
  static var shopFollowed = ItemListileModel(
    'Shop followed',
    '',
    const Icon(Icons.store_mall_directory_outlined),
  );
  static var myCredits = ItemListileModel(
    'My Credits',
    '',
    const Icon(Icons.attach_money_rounded),
  );
  static var inviteFriends = ItemListileModel(
    'Invite friend',
    '',
    const Icon(Icons.person_add),
  );

  static var settings = ItemListileModel(
    '',
    '',
    const Icon(Icons.settings, size: 30),
  );

  static final listDrawerItem = <ItemListileModel>[
    businessMode,
    myFavorites,
    myStats,
    shopFollowed,
    myCredits,
    inviteFriends,
    settings,
  ];
}
