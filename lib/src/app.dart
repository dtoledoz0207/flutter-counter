import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/counter.page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage()
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }

}