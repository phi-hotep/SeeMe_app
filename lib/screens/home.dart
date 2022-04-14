import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/state/business_manager.dart';
import 'package:seeme_app/components/components.dart' show DrawerMenuWidget;

class Home extends StatefulWidget {
  final VoidCallback? drawerOpen;
  bool? isDrawerOpen;
  Home({Key? key, this.drawerOpen, this.isDrawerOpen}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  // ici on redefinit la fonction en retournant la valeur true
  //pour maintenir l'état du contenu de la page
  //en cas de navigation vers une autre
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: DrawerMenuWidget(
            onClicked: widget.drawerOpen,
            isDrawerOpen: widget.isDrawerOpen!,
          ),
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
          child: Stack(
            children: <Widget>[
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(Femme.listFemme[index]);
                },
                itemCount: Femme.listFemme.length,
              ),
              Positioned(
                right: 20,
                child: switchBusinessButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Consumer<BusinessManager> switchBusinessButton() {
    return Consumer<BusinessManager>(
      builder: (context, businessManager, child) {
        return Switch(
          activeColor: Colors.green,
          value: businessManager.isSwitchToBusinessMode,
          onChanged: (val) {
            Provider.of<BusinessManager>(context, listen: false).switchMode =
                val;
            var snackbarBusiness = const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Business mode',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(seconds: 1),
            );
            var snackbarsimple = const SnackBar(
              backgroundColor: Colors.red,
              content:
                  Text('Simple mode', style: TextStyle(color: Colors.white)),
              duration: Duration(seconds: 1),
            );
            if (Provider.of<BusinessManager>(context, listen: false)
                .isSwitchToBusinessMode) {
              ScaffoldMessenger.of(context).showSnackBar(snackbarBusiness);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(snackbarsimple);
            }
          },
        );
      },
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
  Widget? buildLeading(BuildContext context) {} // revenir en arrière

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
