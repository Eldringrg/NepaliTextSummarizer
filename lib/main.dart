import 'package:flutter/material.dart';
import 'NavBar.dart';

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
                width: double.infinity,
                child: Text(
                  'Nepali Text Summarizer',
                  textAlign: TextAlign.center,
                ),
              )),
          body: Column(
            children: [
              Container(
                child: TextField(
                  minLines: 28,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter/Paste Nepali Text',
                  ),
                  keyboardType: TextInputType.multiline,
                ),
                margin:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              ),
              ElevatedButton(
                child: Text('SUMMARIZE'),
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[600],
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
              ),
            ],
          )),
    );
  }
}
