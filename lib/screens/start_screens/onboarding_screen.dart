// La page du onboarding

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/models/models.dart';
import 'package:seeme_app/state/app_state_manager.dart';

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
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // L'utilisateur a fini l'onboarding -->
            Provider.of<AppStateManager>(context, listen: false)
                .completeOnboardingOk();
          },
          child: const Text('Skip'),
        ),
      ),
    );
  }
}
