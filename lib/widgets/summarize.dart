import 'package:flutter/material.dart';
import 'summary.dart';

class Summarize extends StatefulWidget {
  @override
  State<Summarize> createState() => _SummarizeState();
}

class _SummarizeState extends State<Summarize> {
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
            onChanged: (text) {
              summary = text;
            },
            keyboardType: TextInputType.multiline,
          ),
          margin: EdgeInsets.only(top: 30, left: 35, right: 30, bottom: 10),
        ),
        Container(
          child: ElevatedButton(
            child: Text('SUMMARIZE'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Summary(SummaryContent: summary),
                ),
              );
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
    ));
  }
}
