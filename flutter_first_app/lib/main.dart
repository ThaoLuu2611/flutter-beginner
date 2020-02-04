import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('My first flutter app'),//propertice and value
        centerTitle: true,
        backgroundColor: Colors.blue[200],//press ctrl+q to view more color
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('hihi'),
          Text('haha'),
          Text('multi'),
          Row(
            children: <Widget>[
              Text('hello'),
              Text('world'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.yellow,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.pink,
            child: Text('one'),
          ),

        ],
      ),
      //every widget is class
      floatingActionButton: FloatingActionButton(//instance of class
        child:Text('click here'),
        onPressed: (){

        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.red[200],
      ),

    );

  }
}