import 'package:flutter/material.dart';
import 'package:seeme_app/components/button.dart' show IconButtonWidget;

class SettingsProfileImage extends StatelessWidget {
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
