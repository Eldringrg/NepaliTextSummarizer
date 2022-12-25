import 'package:flutter/material.dart';
import 'package:nepalitextsummarizer/aboutUs.dart';
import 'main.dart';
import 'aboutUs.dart';
import 'contact.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('WeSummarizeText'),
            accountEmail: Text('wesummarizetext@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assests/person.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.teal[600],
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyApp(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.description),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUs(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact Us'),
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
