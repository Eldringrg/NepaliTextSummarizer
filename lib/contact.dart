import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: double.infinity,
            child: Text(
              'Contact Us',
              textAlign: TextAlign.center,
            ),
          )),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                'BCT MAJOR PROJECT TEAM',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[600]),
              ),
            ),
            margin: EdgeInsets.only(top: 170),
          ),
          Container(
            child: Center(
              child: Text('Lamachaur,Pokhara-16',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
          ),
          Container(
            child: Center(
              child: Text('Email:eldrintamu3@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 22),
          ),
          Container(
            child: Center(
              child: Text('Email:prashantpant809@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(left: 20),
          ),
          Container(
              child: Center(
            child: Text('Email:bidhyapoudel2@gmail.com',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          )),
          Container(
            child: Center(
              child: Text(
                'Email:rasmibhattrai@gmail.com',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(right: 12),
          ),
        ],
      ),
    );
  }
}
