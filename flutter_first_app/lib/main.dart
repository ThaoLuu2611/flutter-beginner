import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
//import 'package:table_calendar/table_calendar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
       theme: ThemeData(
         primaryColor: Colors.amber,
       ),
        home: RandomWords()
    );
  }
}


class RandonWordsState extends State<RandomWords>{
  final WordPair word = WordPair.random();
  List<WordPair> _list = <WordPair>[];
  Set<WordPair> set = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _suggestion(){
    return ListView.builder(
        itemBuilder: (BuildContext context, int i){
            if(i.isOdd)
              return Divider();
            int index = i~/2;
            if(index >= _list.length){
              _list.addAll(generateWordPairs().take(10));
            }
            return(_row(_list[index]));
        });
  }

  Widget _row(WordPair pair) {
    final isSaved = set.contains(pair);
    return ListTile(
      title: Text(pair.asPascalCase),
      contentPadding: EdgeInsets.all(10),
      trailing: Icon(
        isSaved ? Icons.favorite : Icons.favorite_border,
        color: isSaved ? Colors.red : Colors.green,
      ),
      onTap: (){
        setState(() {
          if(isSaved)
            set.remove(pair);
          else {
            set.add(pair);
        }
        });
      },

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved,)
        ],
      ),
      body: _suggestion()
    );

  }

  void _pushSaved(){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context){
          final Iterable<ListTile> tiles = set.map(
              (WordPair pair){
                return ListTile(
                  title: Text(
                    pair.asPascalCase,
                    style: _biggerFont,
                  )
                );
              }
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved suggestion'),
            ),
            body: ListView(children: divided),
          );

        }
      )
    );
  }

}
class RandomWords extends StatefulWidget{
  @override
  RandonWordsState createState() => RandonWordsState();
}
