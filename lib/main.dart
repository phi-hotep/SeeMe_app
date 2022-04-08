import 'package:flutter/material.dart';
import 'package:seeme_app/state/business_manager.dart';
import 'seeme_theme.dart';
import 'main_home.dart';
import 'state/state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const SeeMeApp());
}

class SeeMeApp extends StatelessWidget {
  const SeeMeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seeMeTheme = SeeMeTheme.dark();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TabManager(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeManager(),
        ),
        ChangeNotifierProvider(
          create: (context) => BusinessManager(),
        )
      ],
      child: Consumer<ThemeManager>(builder: (context, _value, child) {
        return MaterialApp(
          title: 'SeeMe',
          debugShowCheckedModeBanner: false,
          theme: _value.getTheme ? SeeMeTheme.light() : SeeMeTheme.dark(),
          home: const MainHome(title: 'SeeMe'),
        );
      }),
    );
  }
}
