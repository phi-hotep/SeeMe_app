// Ici la liste de toutes les pages de l'application

class SeeMePages {
  static String root = 'root';
  // Error page
  static String error = 'error';

// Ici les pages qui se trouvent dans le dossier /screens/start_screens/

  static String splash = 'splashPage';
  static String onboarding = 'onboardingPage';
  static String login = 'loginPage';

  // Ici les pages qui se trouvent dans le dossier /screens -->

  static String mainHome = 'mainHomePage';
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

class SeeMePagesPath {
  static String rootPath = '/';
  // Ici les pages qui se trouvent dans le dossier /screens/start_screens/ -->
  static String splashPath = '/splashPage';
  static String onboardingPath = '/onboardingPage';
  static String loginPath = '/loginPage';

  // Ici les pages qui se trouvent dans le dossier /screens -->

  static String homePath = '/home/:tab(0|1|2|3)';
  static String drawerPath = 'drawer';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/ -->
  static String settingsPath = 'settingsPage';
  static String businessPath = 'businessPage';
  static String myFavoritesPath = 'my_favoritesPage';
  static String myStatsPath = 'my_statsPage';
  static String shopFollowedPath = 'shop_followedPage';
  static String myCreditsPath = 'my_creditsPage';
  static String inviteFriendPath = 'inviteFriendPage';

  // Ici les pages qui se trouvent dans le dossier /screens/drawer_screens/settings_screens/ -->
  static String settingsProfilePath = 'profilePage';
  static String settingsProfileImagePath = 'profileImagePage';
  static String settingsAccountPath = 'accountPage';
  static String settingsNotificationPath = 'notificationsPage';
  static String settingsClearStoragePath = 'clearStoragePage';
  static String settingsLanguagePath = 'languagePage';
  static String settingsUserGuidePath = 'userGuidePage';
  static String settingsHelpPath = 'helpPage';
}
