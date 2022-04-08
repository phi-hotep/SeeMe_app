import 'package:flutter/material.dart';

class DrawerItemModel {
  final String? title;
  final String? subTitle;
  final Icon? icon;
  final Widget drawerPage;

  const DrawerItemModel({
    this.title,
    this.subTitle,
    this.icon,
    required this.drawerPage,
  });
}
