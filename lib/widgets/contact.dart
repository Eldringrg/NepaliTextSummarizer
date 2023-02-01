import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Container(
            width: 280,
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
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[600]),
              ),
            ),
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(left: 5),
          ),
          Container(
            child: Center(
              child: Text('Lamachaur,Pokhara-16',
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 20, bottom: 10),
          ),
          Container(
            child: Center(
              child: Text(
                'Eldrin',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 290),
          ),
          Container(
            child: Center(
              child: Text(
                'E-mail:eldrintamu3@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 35),
          ),
          Container(
            child: Center(
              child: Text(
                'Prashant',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 250),
          ),
          Container(
            child: Center(
              child: Text('E-mail:prashantpant809@gmail.com',
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(left: 20),
          ),
          Container(
            child: Center(
              child: Text(
                'Bidhya',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 270),
          ),
          Container(
            child: Center(
              child: Text('E-mail:bidhyapoudel436@gmail.com',
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(left: 25),
          ),
          Container(
            child: Center(
              child: Text(
                'Rasmi',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 270),
          ),
          Container(
            child: Center(
              child: Text(
                'E-mail:bhattarairasmi72@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(left: 27),
          ),
          Container(
            child: Center(
              child: Text(
                '[Credits]',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
            padding: EdgeInsets.only(right: 22),
          ),
          Container(
            child: Center(
              child: Text(
                'Supervisior:Er.Nabin Lamichhane',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            margin: EdgeInsets.only(top: 10, bottom: 5),
          ),
        ],
      ),
    );
  }
}
