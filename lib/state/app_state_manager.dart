// Gestionnaire des états de l'application

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SeeMeTab {
  static const int home = 0;
  static const int shop = 1;
  static const int ads = 2;
  static const int ambassador = 3;
}

class AppStateManager extends ChangeNotifier {
  SharedPreferences prefs;
  AppStateManager(this.prefs);

  bool _initialized = false;
  bool _loggedIn = false;
  bool _onboardingComplete = false;
  int _selectedTab = SeeMeTab.home;
  final _appCache = AppCache();

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

// Initialisation de l'app -->
  void initializeApp() async {
    Timer(
      const Duration(milliseconds: 10000),
      () {
        _initialized = true;
        notifyListeners();
      },
    );
  }

// L'ultilisateur s'est loggé -->
  void loginOk(String userEmail, String password) async {
    _loggedIn = true;
    await _appCache.cacheUserLogin();
    notifyListeners();
  }

// Lutilisateur a fini l'onboarding -->
  void completeOnboardingOk() async {
    _onboardingComplete = true;
    await _appCache.cacheUserOnboarding();
    notifyListeners();
  }

// Deconnexion de l'utilisateur -->
  void logout() async {
    _initialized = false;
    _selectedTab = 0;
    initializeApp();
    await _appCache.disconnection();
    _loggedIn = await _appCache.isUserLoggedIn();
    _onboardingComplete = await _appCache.isOnboardingCompleted();
    notifyListeners();
  }

// Changement d'onglet de navigation -->
  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }
}
