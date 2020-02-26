import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHome(),
));

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Oeschinen Lake Camground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'Kandersteg,, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),

              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),

    );

    Column _buttonColumn(Color color, IconData icon, String label){
      return Column(
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buttonRow(){
      Color color = Theme.of(context).primaryColor;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buttonColumn(color, Icons.call, 'CALL'),
          _buttonColumn(color, Icons.near_me, 'ROUTE'),
          _buttonColumn(color, Icons.share, 'SHARE'),
        ],
      );
    }

    Widget _textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.'),
    );

    return MaterialApp(
      title: 'Flutter demo layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter layout demo'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
            'assets/icon3.png'),
            titleSection,
            _buttonRow(),
            _textSection,
          ],
        )
      )
    );
  }
}