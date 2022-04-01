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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: seeMeTheme,
      title: 'SeeMe',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          )
        ],
        child: const MainHome(title: 'SeeMe'),
      ),
    );
  }
}
