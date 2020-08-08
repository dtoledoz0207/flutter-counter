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
      floatingActionButton: _createFloatingButtons(),
    );
  }

  Widget _createFloatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 32.0),
        FloatingActionButton(child: Icon(Icons.restore), onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove_circle), onPressed: _remove,),
        SizedBox(width: 10.0),
        FloatingActionButton(child: Icon(Icons.add_circle), onPressed: _add,)
      ],
    );
  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _remove() {
    setState(() => _counter-- );
  }

  void _reset() { setState(() => _counter = 0); }
}