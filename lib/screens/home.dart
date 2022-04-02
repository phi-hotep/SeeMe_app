import 'package:flutter/material.dart';
import 'package:seeme_app/models/models.dart';
import 'package:provider/provider.dart';
import 'package:seeme_app/state/theme_state.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('SeeMe'),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeState>(context, listen: false).changeTheme();
            },
            icon: Icon(Provider.of<ThemeState>(context).getTheme
                ? Icons.sunny
                : Icons.brightness_2),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
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
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(Femme.listFemme[index]);
                },
                itemCount: Femme.listFemme.length,
              ),
              Positioned(
                right: 20,
                child: Switch(
                  activeColor: Colors.red,
                  value: _switchTapped,
                  onChanged: (val) {
                    setState(() {
                      _switchTapped = val;
                    });
                    var snackbarBusiness = const SnackBar(
                      content: Text('Business mode '),
                      duration: Duration(seconds: 1),
                    );
                    var snackbarsimple = const SnackBar(
                      content: Text('Simple mode '),
                      duration: Duration(seconds: 1),
                    );
                    if (_switchTapped = true) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbarBusiness);
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackbarsimple);
                    }
                  },
                ),
              ),
            ],
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
