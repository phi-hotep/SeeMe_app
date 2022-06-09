// La page du onboarding

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

class OnboardingScreen extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.onboarding,
      key: ValueKey(SeeMePages.onboarding),
      child: const OnboardingScreen(),
    );
  }

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
