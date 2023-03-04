import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/aboutUs';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal[600],
            title: Container(
              width: 280,
              child: const Text(
                'About ',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'OpenSans'),
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Nepali Text Summarizer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.teal[600],
                            fontFamily: 'Montserrat',
                          )),
                      TextSpan(
                        text:
                            ' provides an automatic text summarization in Nepali Language. Through this app, we aim to provide the gist without losing the context of the original text. We aim to provide this feature by using various Natural Language Processing algorithms.Similarly, the application would provide input and output features for the interaction with the user.In general, there are two basic methods of summarization. They are extraction and abstraction.This app summarizes extractively.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ]))),
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'This app is  developed with the collaborative effort of all the team members:',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                            )),
                        TextSpan(
                          text: ' • Prashant Pant'
                              '  • Rasmi Bhattrai'
                              '  • Bidhya Poudel'
                              '  • Eldrin Gurung.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal[600],
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ))),
          ],
        )));
  }
}
