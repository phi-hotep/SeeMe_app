import 'package:flutter/material.dart';

class SettingsProfileInfo extends StatelessWidget {
  const SettingsProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              expandedHeight: 240,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 25,
                  ),
                )
              ],
              flexibleSpace: const FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/femme5.jpg',
                    ),
                    radius: 50,
                  ),
                ),
              ),
              floating: true,
              snap: true,
              pinned: true,
            )
          ],
          body: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    title: Text('Item $index'),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemCount: 30),
        ),
      ),
    );
  }
}
