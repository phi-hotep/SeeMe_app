import 'package:flutter/material.dart';

import '../../models/seeme_pages.dart';

class InviteFriends extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.inviteFriend,
      key: ValueKey(SeeMePages.inviteFriend),
      child: const InviteFriends(),
    );
  }

  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InviteFriends'),
      ),
    );
  }
}
