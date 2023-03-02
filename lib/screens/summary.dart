import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  static const routeName = '/summary';
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final SummaryContent = routeArgs['output'];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
              width: 280,
              child: const Text(
                'Summary',
                textAlign: TextAlign.center,
              ))),
      body: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.teal[600],
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
