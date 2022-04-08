import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart' show DrawerItemModel;
import 'package:seeme_app/screens/screens.dart';

class DrawerItemsData {
  static var activity = const DrawerItemModel(
    title: 'My Activity',
    subTitle: 'Browse your activities',
    icon: Icon(Icons.local_activity),
    drawerPage: MyActivity(),
  );
  static var stats = const DrawerItemModel(
    title: 'My stats',
    subTitle: 'Look about your stats',
    icon: Icon(Icons.insert_chart_outlined),
    drawerPage: MyStats(),
  );
  static var pins = const DrawerItemModel(
    title: 'Shop followed',
    subTitle: 'Shops you are following',
    icon: Icon(Icons.follow_the_signs_sharp),
    drawerPage: ShopFollowed(),
  );
  static var credit = const DrawerItemModel(
    title: 'My credits',
    subTitle: '',
    icon: Icon(Icons.monetization_on),
    drawerPage: MyCredits(),
  );
  static var setting = const DrawerItemModel(
    title: 'Settings',
    subTitle: 'Privacy, security, etc.',
    icon: Icon(Icons.settings),
    drawerPage: Settings(),
  );
  static var inviteFriend = const DrawerItemModel(
    title: 'Invite friends',
    subTitle: '',
    icon: Icon(Icons.mobile_friendly),
    drawerPage: InviteFriends(),
  );
  static var help = const DrawerItemModel(
    title: 'help',
    subTitle: 'Terms and privacy policy, contact us, etc.',
    icon: Icon(Icons.help),
    drawerPage: Help(),
  );

  static final listItems = <DrawerItemModel>[
    activity,
    stats,
    pins,
    credit,
    setting,
    inviteFriend,
    help,
  ];
}
