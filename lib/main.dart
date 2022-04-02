import 'package:flutter/material.dart';
import 'seemetheme.dart';
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
          create: (context) => ThemeState(),
        ),
      ],
      child: Consumer<ThemeState>(builder: (context, _value, child) {
        return MaterialApp(
          title: 'SeeMe',
          debugShowCheckedModeBanner: false,
          theme: _value.getTheme ? SeeMeTheme.dark() : SeeMeTheme.light(),
          home: const MainHome(title: 'SeeMe'),
        );
      }),
    );
  }
}
