import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: double.infinity,
            child: Text(
              'Summary',
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
