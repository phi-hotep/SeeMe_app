// Fichier d'enregistrement des données de connexion etc de l'utilisateur

import 'package:shared_preferences/shared_preferences.dart';

class AppCache {
  static const kUser = 'UserLoggin';
  static const kOnboarding = 'Onboarding';
  static const kTheme = 'UserTheme';
  static const kMode = 'UserMode';

// deconnecte l'utilisateur et le renvoie à la page d'initialisation de l'app -->
  Future<void> disconnection() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kUser, false);
    prefs.setBool(kOnboarding, false);
  }

// Permet de sauvegarder l'état ok de l'utilisateur quand il s'est déjà loggé -->
  Future<void> cacheUserLogin() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kUser, true);
  }

// Permet de sauvegarder l'état ok de l'utilisateur quand il a déjà traversé l'onboarding -->
  Future<void> cacheUserOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kOnboarding, true);
  }

// Permet de récupérer l'état de connexion de l'utilisateur -->
  Future<bool> isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kUser) ?? false;
  }

// Permet de récupérer l'état de l'onboarding de l'utilisateur -->
  Future<bool> isOnboardingCompleted() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(kOnboarding) ?? false;
  }

// Ces deux fonctions enregistrent les préférences de theme de l'utilisateur -->
  void cacheLightTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kTheme, false);
  }

  void cacheDarkTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kTheme, true);
  }

  void cacheUserMode(bool val) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(kMode, val);
  }
}
