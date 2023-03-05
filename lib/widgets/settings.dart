import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_settings.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool light = true;
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
            width: 200,
            child: const Text(
              'Settings',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'OpenSans'),
            ),
          )),
      body: SwitchListTile(
        // This bool value toggles the switch.
        value: light,
        activeColor: Colors.green,
        title: const Text(
          'Switch theme',
          style: TextStyle(fontFamily: 'OpenSans'),
        ),
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(
            () {
              light = value;
              _toggleTheme();
            },
          );
        },
        secondary: const Icon(Icons.brightness_4_outlined),
      ),
    );
  }
}
