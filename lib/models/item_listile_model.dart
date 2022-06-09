// Model permettant de construire une liste d'éléments (Listile)

import 'package:flutter/material.dart';

class ItemListileModel {
  String title;
  String subTitle;
  Widget icon;
  ItemListileModel(this.title, this.subTitle, this.icon);
}

class ProfileInfoModel {
  String title;
  Widget icon;
  ProfileInfoModel(this.title, this.icon);
}
