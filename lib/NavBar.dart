import 'package:flutter/material.dart';
import 'package:nepalitextsummarizer/aboutUs.dart';
import 'main.dart';
import 'aboutUs.dart';
import 'contact.dart';
import 'FAQ.dart';
import 'help.dart';
import 'Settings.dart';

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
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutUs(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Faq(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Help(),
                ));
              }),
          ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact us'),
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
