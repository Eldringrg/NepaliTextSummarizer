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
  String _enteredText = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                cursorColor: Colors.teal[600],
                minLines: 25,
                maxLines: null,
                onChanged: (text) {
                  setState(() {
                    _enteredText = text;
                  });
                  url = 'http://10.0.2.2:5000/api?query=' + text.toString();
                },
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Enter/Paste Nepali Text',
                    counterText:
                        '${_enteredText.length.toString()} character(s)'),
              ),
              margin: EdgeInsets.only(top: 30, left: 35, right: 30, bottom: 10),
            ),
            Container(
              child: ElevatedButton(
                child: const Text(
                  'SUMMARIZE',
                  style: TextStyle(fontFamily: 'OpenSans'),
                ),
                onPressed: () async {
                  data = await (fetchdata(url));
                  var decoded = jsonDecode(data);
                  setState(() {
                    output = decoded['output'];
                  });
                  Navigator.of(context).pushNamed(Summary.routeName,
                      arguments: {'output': output});
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
        ),
      ),
    );
  }
}
