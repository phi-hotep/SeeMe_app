// Fichier de gestion des CircleAvatar

import 'package:flutter/material.dart';

class CustomCirleAvatar extends StatelessWidget {
  const CustomCirleAvatar({Key? key, required this.img, required this.rad})
      : super(key: key);
  final String img;
  final double rad;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(img),
      radius: rad,
    );
  }
}
