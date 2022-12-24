import 'package:flutter/material.dart';
import 'main.dart';

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
            currentAccountPicture: CircleAvatar(),
            decoration: BoxDecoration(
              color: Colors.teal[600],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('About Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact us'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
