import 'package:flutter/material.dart';
import '../main.dart';
import './aboutUs.dart';
import './contact.dart';
import './settings.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('WeSummarizeText',
                style: TextStyle(fontFamily: 'OpenSans')),
            accountEmail: const Text('wesummarizetext@gmail.com',
                style: TextStyle(fontFamily: 'OpenSans')),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assests/person.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.teal[600],
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title:
                  const Text('Home', style: TextStyle(fontFamily: 'OpenSans')),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(MyApp.routeName);
              }),
          ListTile(
              leading: Icon(Icons.settings),
              title: const Text(
                'Settings',
                style: TextStyle(fontFamily: 'OpenSans'),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(Settings.routeName);
              }),
          ListTile(
              leading: Icon(Icons.contacts),
              title: const Text(
                'Contact_Us',
                style: TextStyle(fontFamily: 'OpenSans'),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(Contact.routeName);
              }),
          ListTile(
              leading: Icon(Icons.info_rounded),
              title: const Text(
                'About',
                style: TextStyle(fontFamily: 'OpenSans'),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(AboutUs.routeName);
              }),
        ],
      ),
    );
  }
}
