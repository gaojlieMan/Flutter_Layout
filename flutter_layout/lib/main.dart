import 'package:flutter/material.dart';

import 'layout_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout'),
        ),
        body: layoutDemo(),
      ),
      theme: ThemeData (
        primaryColor: Colors.blue,
      ),
    );
  }
}


