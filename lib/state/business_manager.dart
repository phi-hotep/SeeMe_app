import 'package:flutter/material.dart';

class BusinessManager extends ChangeNotifier {
  bool _isSwitchToBusinessMode = false;

  bool get isSwitchToBusinessMode => _isSwitchToBusinessMode;
  set switchMode(bool value) {
    _isSwitchToBusinessMode =
        value; // Passer du mode simple au mode business et vice-versa
    notifyListeners();
  }
}
