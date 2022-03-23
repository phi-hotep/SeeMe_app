import 'package:flutter/material.dart';
import 'seemetheme.dart';
import 'main_home.dart';

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
      home: const MainHome(title: 'SeeMe'),
    );
  }
}
