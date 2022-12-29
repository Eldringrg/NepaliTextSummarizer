import 'package:flutter/material.dart';

class Summarize extends StatefulWidget {
  @override
  State<Summarize> createState() => _SummarizeState();
}

class _SummarizeState extends State<Summarize> {
  final titleController = TextEditingController();
  String summary = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Container(
          child: TextField(
            cursorColor: Colors.teal[600],
            minLines: 28,
            maxLines: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Enter/Paste Nepali Text',
            ),
            controller: titleController,
            keyboardType: TextInputType.multiline,
          ),
          margin: EdgeInsets.only(top: 30, left: 35, right: 30, bottom: 10),
        ),
        Container(
          child: ElevatedButton(
            child: Text('SUMMARIZE'),
            onPressed: () {
              setState(() {
                summary = titleController.text;
              });
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
        Divider(),
        Container(
          child: Text('Summarized Content:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
          ),
        ),
        Card(
          elevation: 2,
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(summary),
            ),
          ),
        )
      ],
    ));
  }
}
