import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal[600],
            title: Container(
              width: double.infinity,
              child: Text(
                'About Us',
                textAlign: TextAlign.center,
              ),
            )),
        body: Column(
          children: [
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Nepali Text Summarizer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal[600],
                      )),
                  TextSpan(
                    text:
                        ' provides an automatic text summarization in Nepali Language. Through this app, we aim to provide the gist without losing the context of the original text. We aim to provide this feature by using various Natural Language Processing algorithms.Similarly, the application would provide input and output features for the interaction with the user.In general, there are two basic methods of summarization. They are extraction and abstraction.This app summarizes extractively.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]))),
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        text:
                            'This app is  developed with the collaborative effort of all the team members:',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    TextSpan(
                      text: ' • Prashant Pant'
                          '  • Rasmi Bhattrai'
                          '  • Bidhya Poudel'
                          '  • Eldrin Gurung.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[600]),
                    ),
                  ],
                ))),
          ],
        ));
  }
}
