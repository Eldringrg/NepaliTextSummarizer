import 'package:flutter/material.dart';
import './NavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final textController = TextEditingController();
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
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                minLines: 28,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'Enter/Paste Nepali Text',
                ),
                controller: textController,
                keyboardType: TextInputType.multiline,
              ),
              margin: EdgeInsets.only(top: 30, left: 35, right: 30, bottom: 10),
            ),
            Container(
              child: ElevatedButton(
                child: Text('SUMMARIZE'),
                onPressed: () {
                  print(textController);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[600],
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              margin: EdgeInsets.only(left: 10, top: 15),
            ),
          ],
        )),
      ),
    );
  }
}
