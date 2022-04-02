import 'package:flutter/material.dart';

class ThemeState extends ChangeNotifier {
  bool _theme = false;

  bool get getTheme => _theme;

  void changeTheme() {
    _theme = !_theme;
    notifyListeners();
  }
}
