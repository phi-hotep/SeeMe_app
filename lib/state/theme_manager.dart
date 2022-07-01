// Le gestionnaire du thème de l'application

import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  bool _theme = false;

  bool get getTheme => _theme;

// Passer du theme light à dark et vice-versa -->
  void changeTheme() {
    _theme = !_theme;

    notifyListeners();
  }

// Theme par defaut -->
  void initialTheme() {
    _theme = false;
    notifyListeners();
  }
}
