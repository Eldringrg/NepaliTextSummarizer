import 'package:flutter/material.dart';
import './widgets/contact.dart';
import './widgets/NavBar.dart';
import './screens/summarize.dart';
import './widgets/aboutUs.dart';
import './screens/summary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const routeName = '/my-app';
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
                child: const Text(
                  'Nepali Text Summarizer',
                  textAlign: TextAlign.center,
                ),
              )),
          body: Summarize()),
      routes: {
        MyApp.routeName: (ctx) => MyApp(),
        Contact.routeName: (ctx) => Contact(),
        AboutUs.routeName: (ctx) => AboutUs(),
        Summary.routeName: (ctx) => Summary(),
      },
    );
  }
}
