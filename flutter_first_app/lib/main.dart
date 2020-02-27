import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: MyList(),
    ));

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Quote> books = [
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
    Quote(text: 'Call of the Wind', author: 'Lee'),
  ];

  Widget bookCard(quote) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(30),
        color: Colors.amberAccent,
        child: Column(
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            Text(
              quote.author,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Flutter'),
        ),
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: books.map((book) => bookCard(book)).toList(),
        ));
  }
}
