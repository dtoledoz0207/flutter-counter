import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  createState() => new _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final _styleText = new TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of taps:', style: _styleText),
            Text('$_counter', style: _styleText)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Icon(Icons.add_circle),
      ),
    );
  }
}