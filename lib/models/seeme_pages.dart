// Ici la liste de toutes les pages de l'application

class SeeMePages {
// Ici les pages qui se trouvent dans le dossier /screens/start_screens/
  static String splash = 'splashPage';
  static String onboarding = 'onboardingPage';
  static String login = 'loginPage';

  // Ici les pages qui se trouvent dans le dossier /screens -->

  static String home = 'homePage';
  static String shop = 'shopPage';
  static String ads = 'adsPage';
  static String ambassador = 'ambassadorPage';
  static String drawer = 'drawerPage';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/ -->
  static String settings = 'settingsPage';
  static String business = 'businessPage';
  static String myFavorites = 'my_favoritesPage';
  static String myStats = 'my_statsPage';
  static String shopFollowed = 'shop_followedPage';
  static String myCredits = 'my_creditsPage';
  static String inviteFriend = 'inviteFriendPage';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/settings_screens/ -->

  static String settingsProfile = 'profilePage';
  static String settingsProfileImage = 'profileImagePage';
  static String settingsAccount = 'accountPage';
  static String settingsNotification = 'notificationsPage';
  static String settingsClearStorage = 'clearStoragePage';
  static String settingsLanguage = 'languagePage';
  static String settingsUserGuide = 'userGuidePage';
  static String settingsHelp = 'helpPage';
}

class SeeMePagePath {
  // Ici les pages qui se trouvent dans le dossier /screens/start_screens/
  static String splashPath = '/splashPage';
  static String onboardingPath = '/onboardingPage';
  static String loginPath = '/loginPage';

  // Ici les pages qui se trouvent dans le dossier /screens -->
  static String rootPath = '/';
  static String homePath = '/home/:tab(0|1|2|3)';
  static String drawerPath = '/drawer';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/ -->
  static String settingsPath = '/drawer/settingsPage';
  static String businessPath = '/drawer/businessPage';
  static String myFavoritesPath = '/drawer/my_favoritesPage';
  static String myStatsPath = '/drawer/my_statsPage';
  static String shopFollowedPath = '/drawer/shop_followedPage';
  static String myCreditsPath = '/drawer/my_creditsPage';
  static String inviteFriendPath = '/drawer/inviteFriendPage';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/settings_screens/ -->
  static String settingsProfilePath = '/drawer/settingsPage/profilePage';
  static String settingsProfileImagePath =
      '/drawer/settingsPage/profileImagePage';
  static String settingsAccountPath = '/drawer/settingsPage/accountPage';
  static String settingsNotificationPath =
      '/drawer/settingsPage/notificationsPage';
  static String settingsClearStoragePath =
      '/drawer/settingsPage/clearStoragePage';
  static String settingsLanguagePath = '/drawer/settingsPage/languagePage';
  static String settingsUserGuidePath = '/drawer/settingsPage/userGuidePage';
  static String settingsHelpPath = '/drawer/settingsPage/helpPage';
}
