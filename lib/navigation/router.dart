// Router de l'application

import 'package:go_router/go_router.dart';
import 'package:seeme_app/main_home.dart';
import 'package:seeme_app/models/seeme_pages.dart';
import 'package:seeme_app/screens/screens.dart';
import 'package:seeme_app/state/state.dart';

class SeeMeRouter {
  final AppStateManager appStateManager;
  GoRouter get router => _goRouter;

  SeeMeRouter(this.appStateManager);
  late final GoRouter _goRouter = GoRouter(
      refreshListenable: appStateManager,
      debugLogDiagnostics: true,
      urlPathStrategy: UrlPathStrategy.path,
      routes: [
        // Page principale Home -->
        GoRoute(
            name: SeeMePages.root,
            path: SeeMePagesPath.rootPath,
            redirect: (state) =>
                state.namedLocation(SeeMePages.home, params: {'tab': '0'})),
        // Page de demarrage -->
        GoRoute(
          name: SeeMePages.splash,
          path: SeeMePagesPath.splashPath,
          pageBuilder: (context, state) => SplashScreen.page(),
        ),
        // Page d'inscription -->
        GoRoute(
          name: SeeMePages.login,
          path: SeeMePagesPath.loginPath,
          pageBuilder: (context, state) => LoginScreen.page(),
        ),
        // Page de l'onboarding -->
        GoRoute(
          name: SeeMePages.onboarding,
          path: SeeMePagesPath.onboardingPath,
          pageBuilder: (context, state) => OnboardingScreen.page(),
        ),

        // Pages Home|Shop|Ads|Ambassadors -->
        GoRoute(
            name: SeeMePages.home,
            path: SeeMePagesPath.homePath,
            pageBuilder: (context, state) {
              final tab = state.params['tab']!;
              return MainHome.page('SeeMe', int.parse(tab));
            },
            routes: [
              // Page de profil (drawer) -->
              GoRoute(
                name: SeeMePages.drawer,
                path: SeeMePagesPath.drawerPath,
                pageBuilder: (context, state) => DrawerWidget.page(),
                //builder: (context, state) => DrawerWidget.page(),
                routes: [
                  // Page Business -->
                  GoRoute(
                    name: SeeMePages.business,
                    path: SeeMePagesPath.businessPath,
                    pageBuilder: (context, state) => Business.page(),
                  ),
                  // Page My Favorites -->
                  GoRoute(
                    name: SeeMePages.myFavorites,
                    path: SeeMePagesPath.myFavoritesPath,
                    pageBuilder: (context, state) => MyFavorites.page(),
                  ),
                  // Page My Stats -->
                  GoRoute(
                    name: SeeMePages.myStats,
                    path: SeeMePagesPath.myStatsPath,
                    pageBuilder: (context, state) => MyStats.page(),
                  ),
                  // Page Shop followed -->
                  GoRoute(
                    name: SeeMePages.shopFollowed,
                    path: SeeMePagesPath.shopFollowedPath,
                    pageBuilder: (context, state) => ShopFollowed.page(),
                  ),
                  // Page My credits -->
                  GoRoute(
                    name: SeeMePages.myCredits,
                    path: SeeMePagesPath.myCreditsPath,
                    pageBuilder: (context, state) => MyCredits.page(),
                  ),
                  // Page Invite friend -->
                  GoRoute(
                    name: SeeMePages.inviteFriend,
                    path: SeeMePagesPath.inviteFriendPath,
                    pageBuilder: (context, state) => InviteFriends.page(),
                  ),
                  // Page Settings -->
                  GoRoute(
                    name: SeeMePages.settings,
                    path: SeeMePagesPath.settingsPath,
                    pageBuilder: (context, state) => Settings.page(),
                    routes: [
                      // Page profile info -->
                      GoRoute(
                        name: SeeMePages.settingsProfile,
                        path: SeeMePagesPath.settingsProfilePath,
                        pageBuilder: (context, state) =>
                            SettingsProfileInfo.page(),
                      ),
                      // Page Account -->
                      GoRoute(
                        name: SeeMePages.settingsAccount,
                        path: SeeMePagesPath.settingsAccountPath,
                        pageBuilder: (context, state) => SettingsAccount.page(),
                      ),
                      // Page Notifications -->
                      GoRoute(
                        name: SeeMePages.settingsNotification,
                        path: SeeMePagesPath.settingsNotificationPath,
                        pageBuilder: (context, state) =>
                            SettingsNotification.page(),
                      ),
                      // Page clear data -->
                      GoRoute(
                        name: SeeMePages.settingsClearStorage,
                        path: SeeMePagesPath.settingsClearStoragePath,
                        pageBuilder: (context, state) =>
                            SettingsClearStorage.page(),
                      ),
                      // Page Language -->
                      GoRoute(
                        name: SeeMePages.settingsLanguage,
                        path: SeeMePagesPath.settingsLanguagePath,
                        pageBuilder: (context, state) =>
                            SettingsLanguage.page(),
                      ),
                      // Page User guide -->
                      GoRoute(
                        name: SeeMePages.settingsUserGuide,
                        path: SeeMePagesPath.settingsUserGuidePath,
                        pageBuilder: (context, state) =>
                            SettingsUserGuide.page(),
                      ),
                      // Page Help -->
                      GoRoute(
                        name: SeeMePages.settingsHelp,
                        path: SeeMePagesPath.settingsHelpPath,
                        pageBuilder: (context, state) => SettingsHelp.page(),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
      ],
      // la page d'erreur -->
      errorPageBuilder: (context, state) => ErrorScreen.page(state.error!),
      redirect: (state) {
        // Liste des pages
        final splashLoc = state.namedLocation(SeeMePages.splash);
        final loginLoc = state.namedLocation(SeeMePages.login);
        final onboardingLoc = state.namedLocation(SeeMePages.onboarding);
        final rootLoc = state.namedLocation(SeeMePages.root);

        // Liste des états des routes en cours de traversée -->
        final onSplash = state.subloc == splashLoc;
        final onLogin = state.subloc == loginLoc;
        final onOnboarding = state.subloc == onboardingLoc;

        // Redirection vers la page de demarrage -->
        if (!appStateManager.isInitialized &&
            !onSplash &&
            !onLogin &&
            !onOnboarding) {
          return splashLoc;
        }
        // Après le demarrage, redirection vers la page de login -->
        if (appStateManager.isInitialized &&
            !appStateManager.isLoggedIn &&
            !onLogin) {
          return loginLoc;
        }
        // Redirection vers le onboarding si l'utilisateur s'est déjà loggé -->
        if (appStateManager.isLoggedIn &&
            !appStateManager.isOnboardingComplete &&
            !onOnboarding) {
          return onboardingLoc;
        }
        if (appStateManager.isOnboardingComplete && onOnboarding) {
          return rootLoc;
        }

        return null;
      });
}
