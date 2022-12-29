import 'package:flutter/material.dart';
import './NavBar.dart';
import './summarize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
              backgroundColor: Colors.teal[600],
              title: Container(
                width: 280,
                child: Text(
                  'Nepali Text Summarizer',
                  textAlign: TextAlign.center,
                ),
              )),
          body: Summarize()),
    );
  }
}
