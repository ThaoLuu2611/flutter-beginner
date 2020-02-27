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
  List<Quote> quotes = [
    Quote(author: 'Lee', text: 'Call of the wind'),
    Quote(author: 'Lee', text: 'Call of the wind'),
    Quote(author: 'Lee', text: 'Call of the wind'),
    Quote(author: 'Lee', text: 'Call of the wind'),
    Quote(author: 'Lee', text: 'Call of the wind'),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('Awesome lists'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((q) => Text('${q.author} - ${q.text}')).toList()
      ),
    );
  }
}
