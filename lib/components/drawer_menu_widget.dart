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
      icon: Icon(isDrawerOpen ? Icons.arrow_back : Icons.menu),
      onPressed: onClicked,
    );
  }
}
