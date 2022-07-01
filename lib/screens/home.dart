// La page d'acceuil

import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';

final _pageStorageBucketHome = PageStorageBucket();
const _homePageStorageKey = PageStorageKey<String>('home');

class Home extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: SeeMePages.home,
      key: ValueKey(SeeMePages.home),
      child: const Home(),
    );
  }

  final VoidCallback? drawerOpen;
  // final bool? isDrawerOpen;
  const Home({Key? key, this.drawerOpen}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _pageStorageBucketHome,
      child: Scaffold(
        appBar: AppBar(
          excludeHeaderSemantics: true,
          centerTitle: true,
          leading: IconButton(
            onPressed: widget.drawerOpen,
            icon: const Icon(Icons.person),
          ),
          title: const Text('SeeMe'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                // Methode de Flutter pour implémenter la page de recherche
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 35,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Center(
            child: ListView.builder(
              key: _homePageStorageKey,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return buildCard(Femme.listFemme[index]);
              },
              itemCount: Femme.listFemme.length,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(Femme femme) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image(
          image: AssetImage(femme.image),
        ),
      ),
    );
  }
}

// Ici on implémente la page de recherche -->

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Hugues',
    'Arnold',
    'Gilles',
    'Raymond',
    'Yves',
    'Ronald',
    'Francine',
    'Didier',
    'Salomé',
    'Kenny',
    'Réné',
    'Josceline'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      // Pour tout éffacer
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(
          Icons.close,
          color: Colors.red,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  } // revenir en arrière

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
