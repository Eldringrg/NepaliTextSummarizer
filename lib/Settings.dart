import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: double.infinity,
            child: Text(
              'Settings',
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
