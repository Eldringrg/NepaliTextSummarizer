import 'dart:convert';

import 'package:flutter/material.dart';
import '../function.dart';
import './summary.dart';

class Summarize extends StatefulWidget {
  @override
  State<Summarize> createState() => _SummarizeState();
}

class _SummarizeState extends State<Summarize> {
  String url = '';
  var data;
  String output = 'Initial Output';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Container(
          child: TextField(
            cursorColor: Colors.teal[600],
            minLines: 23,
            maxLines: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: 'Enter/Paste Nepali Text',
            ),
            onChanged: (text) {
              url = 'http://10.0.2.2:5000/api?query=' + text.toString();
            },
            keyboardType: TextInputType.multiline,
          ),
          margin: EdgeInsets.only(top: 30, left: 35, right: 30, bottom: 10),
        ),
        Container(
          child: ElevatedButton(
            child: const Text('SUMMARIZE'),
            onPressed: () async {
              data = await (fetchdata(url));
              var decoded = jsonDecode(data);
              setState(() {
                output = decoded['output'];
              });
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Summary(SummaryContent: output),
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
