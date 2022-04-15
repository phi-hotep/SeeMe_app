import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/state/state.dart';

// IconButton générique à utiliser dans toute l'application SeeMe
class IconButtonWidget extends StatelessWidget {
  final Widget icon;
  final VoidCallback function;
  const IconButtonWidget({
    Key? key,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: function,
        icon: icon,
        color: Provider.of<ThemeManager>(context).getTheme
            ? Colors.white
            : Colors.black);
  }
}
