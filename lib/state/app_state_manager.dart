import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

class SeeMeTab {
  static const int home = 0;
  static const int shop = 1;
  static const int ads = 2;
  static const int ambassador = 3;
}

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _loggedIn = false;
  bool _onboardingComplete = false;
  int _selectedTab = SeeMeTab.home;
  final _appCache = AppCache();

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

  void initializeApp() async {
    _loggedIn = await _appCache.isUserLoggedIn();
    _onboardingComplete = await _appCache.didCompleteOnboarding();

    Timer(
      const Duration(milliseconds: 2000),
      () {
        _initialized = true;
        notifyListeners();
      },
    );
  }

  void login(String userEmail, String password) async {
    _loggedIn = true;
    await _appCache.cacheUser();
    notifyListeners();
  }

  void completeOnboarding() async {
    _onboardingComplete = true;
    await _appCache.completeOnboarding();
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void logout() async {
    _initialized = false;
    _selectedTab = 0;
    await _appCache.invalidate();

    initializeApp();
    notifyListeners();
  }
}
