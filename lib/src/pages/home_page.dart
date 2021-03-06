import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleText = new TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold);

  final int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of clicks:', style: styleText),
            Text('$counter', style: styleText)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello world');
        },
        child: Icon(Icons.add_circle),
      ),
    );
  }
}