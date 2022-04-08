import 'package:flutter/material.dart';

class Ambassador extends StatelessWidget {
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
