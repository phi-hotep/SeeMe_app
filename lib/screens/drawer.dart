import 'package:flutter/material.dart';
import 'package:seeme_app/data/data.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
      children: DrawerItemsData.listItems
          .map((item) => ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                leading: item.icon,
                title: Text(
                  item.title!,
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {},
              ))
          .toList(),
    );
  }
}
