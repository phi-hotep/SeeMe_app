// Page d'erreur

import 'package:flutter/material.dart';
import 'package:seeme_app/models/seeme_pages.dart';

// ignore: must_be_immutable
class ErrorScreen extends StatelessWidget {
  static MaterialPage page(Exception error) {
    return MaterialPage(
      name: SeeMePages.error,
      key: ValueKey(SeeMePages.error),
      child: ErrorScreen(
        error: error,
      ),
    );
  }

  final Exception? error;
  late String message;

  ErrorScreen({Key? key, this.error}) : super(key: key) {
    if (error != null) {
      message = error.toString();
    } else {
      message = 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(message)));
  }
}
