import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  static const routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
        backgroundColor: Colors.teal[600],
        title: Container(
          width: 280,
          child: const Text(
            'Contact Us',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'OpenSans'),
          ),
        ));
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.8,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Center(
                child: Text(
                  'BCT MAJOR PROJECT TEAM',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[600],
                      fontFamily: 'Montserrat'),
                ),
              ),
              Center(
                child: const Text(
                  'Lamachaur,Pokhara-16',
                  style: TextStyle(
                      fontSize: 20, color: Colors.grey, fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  'Prashant',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text('E-mail:prashantpant809@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontFamily: 'OpenSans')),
              ),
              Center(
                child: const Text(
                  'Eldrin',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  'E-mail:eldrintamu3@gmail.com',
                  style: TextStyle(
                      fontSize: 20, color: Colors.grey, fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  'Bidhya',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text('E-mail:bidhyapoudel436@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontFamily: 'OpenSans')),
              ),
              Center(
                child: const Text(
                  'Rasmi',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  'E-mail:bhattarairasmi72@gmail.com',
                  style: TextStyle(
                      fontSize: 20, color: Colors.grey, fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  '[Credits]',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'OpenSans'),
                ),
              ),
              Center(
                child: const Text(
                  'Supervisior:Er.Nabin Lamichhane',
                  style: TextStyle(
                      fontSize: 20, color: Colors.grey, fontFamily: 'OpenSans'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
