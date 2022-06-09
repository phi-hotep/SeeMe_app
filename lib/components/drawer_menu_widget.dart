// Widget personnalisé utilisé dans le fichier home.dart permettant
// alternativement de changer l'icon arrow pour l'icon person si
// l'utilisateur ouvre ou ferme le drawer.

import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  final VoidCallback? onClicked;
  bool isDrawerOpen;
  DrawerMenuWidget(
      {Key? key, required this.onClicked, required this.isDrawerOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isDrawerOpen ? Icons.arrow_back : Icons.person),
      onPressed: onClicked,
    );
  }
}
