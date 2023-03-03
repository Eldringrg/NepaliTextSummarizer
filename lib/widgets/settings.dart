import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_settings.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _toggleTheme() {
    final settings = Provider.of<ThemeSettings>(context, listen: false);
    settings.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: 280,
            child: const Text(
              'Settings',
              textAlign: TextAlign.center,
            ),
          )),
      body: Center(
        child: ElevatedButton(
          child: Text('Switch Theme'),
          onPressed: () {
            _toggleTheme();
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
