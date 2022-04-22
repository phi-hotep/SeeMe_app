import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  void goToTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }
}
