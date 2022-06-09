import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart' show ProfileInfoModel;

class SettingsProfileInfoData {
  // Informations du compte business
  static var shopName =
      ProfileInfoModel('Beauty hair', const Icon(Icons.store));
  static var shopCategory =
      ProfileInfoModel('Cosmetics', const Icon(Icons.category));
  static var shopLocation =
      ProfileInfoModel('Yaoundé', const Icon(Icons.location_on));
  static var shopOpenHour =
      ProfileInfoModel('7h-21h 6/7', const Icon(Icons.timelapse));
  static var shopEmail =
      ProfileInfoModel('mail@beauty.cm', const Icon(Icons.email));
  static var shopWebSite =
      ProfileInfoModel('http://www.beauty-hair.cm', const Icon(Icons.web));
  static var shopPhoneNumber =
      ProfileInfoModel('698564812', const Icon(Icons.phone));

  // Informations de l'utilisateur simple

  static var userName = ProfileInfoModel('Phi hotep', const Icon(Icons.person));
  static var userGender = ProfileInfoModel('Masculin', const Icon(Icons.man));
  static var userBirthday =
      ProfileInfoModel('06-05-1989', const Icon(Icons.cake));
  static var userInvitationCode =
      ProfileInfoModel('Invitation code', const Icon(Icons.code));
  static var settings =
      ProfileInfoModel('Settings', const Icon(Icons.settings));

  static final listInfoItem = <ProfileInfoModel>[
    shopName,
    shopCategory,
    shopLocation,
    shopOpenHour,
    shopEmail,
    shopWebSite,
    shopPhoneNumber,
    userName,
    userGender,
    userBirthday,
    userInvitationCode,
    settings,
  ];
}
