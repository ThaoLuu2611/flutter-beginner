import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyCard(),
));

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 39, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/icon4.png'),
               radius: 30.0,
             )
           ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icon2.png'),
                radius: 40.0,
              )
            ),
            Divider(height: 30),

            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Thao',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.0,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Thao',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 20.0),
                Text(
                  'Leee hll',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}


