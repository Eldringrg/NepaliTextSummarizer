import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: double.infinity,
            child: Text(
              'Help',
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
