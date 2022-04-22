import 'package:flutter/material.dart';

import '../models/seeme_pages.dart';

class Ambassador extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.ambassador,
      key: ValueKey(SeeMePages.ambassador),
      child: const Ambassador(),
    );
  }

  const Ambassador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(color: Colors.amber),
      ),
    );
  }
}
