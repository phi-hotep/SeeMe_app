import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

import '../components/components.dart';

class SettingsData {
  static var profile = ItemListileModel(
    'Hotep Industries ',
    'Hugues',
    const CustomCirleAvatar(
      img: 'assets/images/femme5.jpg',
      rad: 25,
    ),
  );
  static var account = ItemListileModel(
    'Account',
    'Handle your accout',
    const Icon(Icons.key),
  );
  static var notifications = ItemListileModel(
    'Notifications',
    'Handle notifications',
    const Icon(Icons.notifications),
  );
  static var storage = ItemListileModel(
    'Clear data',
    'Data storage',
    const Icon(Icons.storage),
  );
  static var language = ItemListileModel(
    'Language',
    'Set your language',
    const Icon(Icons.language),
  );
  static var userGuide = ItemListileModel(
    'User guide',
    'Overview of SeeMe',
    const Icon(Icons.map),
  );
  static var help = ItemListileModel(
    'Help',
    'Privacy policy, terms, etc.',
    const Icon(Icons.help),
  );

  static var profileImage = ItemListileModel(
    '',
    '',
    const Icon(Icons.taxi_alert),
  );

  static final listSettingsItem = <ItemListileModel>[
    profile,
    account,
    notifications,
    storage,
    language,
    userGuide,
    help,
    profileImage,
  ];
}
