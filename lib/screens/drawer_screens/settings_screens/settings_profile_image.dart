// update -->
// moved to /screens/drawer_screens/settings folder

import 'package:flutter/material.dart';
import 'package:seeme_app/components/button.dart' show IconButtonWidget;

import '../../../models/seeme_pages.dart';

class SettingsProfileImage extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.settingsProfileImage,
      key: ValueKey(SeeMePages.settingsProfileImage),
      child: const SettingsProfileImage(),
    );
  }

  const SettingsProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Profile photo'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButtonWidget(
            function: () {},
            icon: const Icon(Icons.photo_camera),
          ),
          IconButtonWidget(
            function: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Center(
        child: Hero(
          tag: 'img',
          child: Image.asset('assets/images/femme5.jpg'),
        ),
      ),
    );
  }
}
