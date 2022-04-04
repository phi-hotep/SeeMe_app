import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  bool _theme = false;
  bool _isSwitchToBusinessMode = false;

  bool get getTheme => _theme;
  bool get isSwitchToBusinessMode => _isSwitchToBusinessMode;

  void changeTheme() {
    _theme = !_theme; // passer du theme light à dark et vice-versa
    notifyListeners();
  }

  set switchMode(bool value) {
    _isSwitchToBusinessMode =
        value; // Passer du mode simple au mode business et vice-versa
    notifyListeners();
  }
}
