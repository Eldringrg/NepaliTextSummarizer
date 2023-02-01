import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final SummaryContent;
  Summary({this.SummaryContent});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
              width: 280,
              child: Text(
                'Summary',
                textAlign: TextAlign.center,
              ))),
      body: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.teal[100],
              )),
          margin: EdgeInsets.only(
            left: 40,
            right: 40,
            top: 50,
            bottom: 40,
          ),
          child: Container(
            height: 600,
            width: double.infinity,
            child: Text(
              SummaryContent,
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
          )),
    );
  }
}
