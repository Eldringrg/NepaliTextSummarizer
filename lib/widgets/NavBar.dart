import 'package:flutter/material.dart';
import '../main.dart';
import './aboutUs.dart';
import './contact.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('WeSummarizeText'),
            accountEmail: const Text('wesummarizetext@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assests/person.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.teal[600],
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.info_rounded),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUs(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.contacts),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Contact(),
                ));
              }),
        ],
      ),
    );
  }
}
