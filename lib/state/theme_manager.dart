import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  bool _theme = false;

  bool get getTheme => _theme;

  void changeTheme() {
    _theme = !_theme; // passer du theme light à dark et vice-versa
    notifyListeners();
  }
}
