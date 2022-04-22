import 'package:flutter/material.dart';
import 'package:seeme_app/screens/drawer_screens/settings_profile_image.dart';
import 'package:seeme_app/components/components.dart' show IconButtonWidget;

class SettingsProfileInfo extends StatelessWidget {
  const SettingsProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: true,
              floating: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Hero(
                    tag: 'img',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsProfileImage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/femme5.jpg',
                        ),
                        radius: 20,
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                IconButtonWidget(
                    icon: const Icon(Icons.photo_camera), function: () {})
              ],
            ),
            // First
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Business informations',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildTileBusinessInfo(
                                    Icons.person, 'Phi Hotep'),
                                const Divider(),
                                buildTileBusinessInfo(
                                    Icons.store, 'Market & ads'),
                                const Divider(),
                                buildTileBusinessInfo(
                                    Icons.art_track, 'Arts & entertainment'),
                                const Divider(),
                                buildTileBusinessInfo(
                                    Icons.location_on, 'Localisation'),
                                const Divider(),
                                buildTileBusinessInfo(Icons.mail, 'Mail'),
                                const Divider(),
                                buildTileBusinessInfo(
                                    Icons.web_asset, 'https://www.seeme.cm'),
                              ]),
                        ),
                      ),
                  childCount: 1),
            ),
            // Second
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => const Divider(
                        color: Colors.transparent,
                        height: 8,
                      ),
                  childCount: 1),
            ),
            // Third
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Products'),
                                  Text('Manage >')
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildImageProduct('assets/images/femme1.jpg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  buildImageProduct('assets/images/femme3.jpg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  buildImageProduct('assets/images/femme5.jpg'),
                                ],
                              ),
                            ]),
                          ),
                        ),
                      ),
                  childCount: 1),
            ),
            // Fourth

            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => const Divider(
                        color: Colors.transparent,
                        height: 8,
                      ),
                  childCount: 1),
            ),

            // Fifth
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Card(
                        elevation: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'About and phone number',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildTileBusinessInfo(
                                    Icons.info, 'Hey! I\'m using SeeMe'),
                                const Divider(),
                                buildTileBusinessInfo(
                                    Icons.store, '+237 6 98 56 48 12'),
                              ]),
                        ),
                      ),
                  childCount: 1),
            ),
          ],
        ),
      ),
    );
  }

// Helper method -->
  Widget buildTileBusinessInfo(IconData icon, String name) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
        trailing: const Icon(
          Icons.edit,
          color: Colors.yellow,
        ),
      ),
    );
  }

// Helper method -->
  Widget buildImageProduct(String asset) {
    return Container(
      constraints: const BoxConstraints.expand(height: 100, width: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
