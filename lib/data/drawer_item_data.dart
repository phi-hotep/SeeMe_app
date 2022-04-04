import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart' show DrawerItemModel;

class DrawerItemsData {
  static var activity = const DrawerItemModel(
    title: 'My Activity',
    icon: Icon(Icons.local_activity),
  );
  static var stats = const DrawerItemModel(
    title: 'My stats',
    icon: Icon(Icons.stacked_bar_chart),
  );
  static var pins = const DrawerItemModel(
    title: 'My pins',
    icon: Icon(Icons.follow_the_signs_outlined),
  );
  static var credit = const DrawerItemModel(
    title: 'My credits',
    icon: Icon(Icons.money),
  );
  static var setting = const DrawerItemModel(
    title: 'Settings',
    icon: Icon(Icons.settings),
  );
  static var inviteFriend = const DrawerItemModel(
    title: 'Invite friends',
    icon: Icon(Icons.mobile_friendly),
  );
  static var help = const DrawerItemModel(
    title: 'help',
    icon: Icon(Icons.help),
  );

  static final listItems = <DrawerItemModel>[
    activity,
    stats,
    pins,
    credit,
    setting,
    inviteFriend,
    help
  ];
}
