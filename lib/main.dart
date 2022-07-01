// La racine de l'application

// Update: AppStateManager has been connected on the root of app

import 'package:flutter/material.dart';
import 'package:seeme_app/navigation/router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'seeme_theme.dart';
import 'state/state.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _state = AppStateManager(await SharedPreferences.getInstance());
  _state.initializeApp();
  runApp(
    SeeMeApp(
      appStateManager: _state,
    ),
  );
}

class SeeMeApp extends StatelessWidget {
  final AppStateManager appStateManager;
  const SeeMeApp({Key? key, required this.appStateManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => appStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeManager(),
        ),
        ChangeNotifierProvider(
          create: (context) => BusinessManager(),
        ),
        Provider<SeeMeRouter>(create: (context) => SeeMeRouter(appStateManager))
      ],
      child: Builder(builder: (contextRouter) {
        final router =
            Provider.of<SeeMeRouter>(contextRouter, listen: false).router;

        return Consumer<ThemeManager>(builder: (contextRouter, _value, child) {
          return MaterialApp.router(
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            title: 'SeeMe',
            debugShowCheckedModeBanner: false,
            theme: _value.getTheme ? SeeMeTheme.dark() : SeeMeTheme.light(),
          );
        });
      }),
    );
  }
}
