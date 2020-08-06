import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleText = new TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold);

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
            Text('0', style: styleText)
          ],
        )
      ),
    );
  }
}