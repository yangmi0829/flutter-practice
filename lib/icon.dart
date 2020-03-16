import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: Text('按钮')),
        body: Row(children: [
          Icon(
            Icons.accessible,
            color: Colors.green,
          ),
          Icon(
            Icons.error,
            color: Colors.green,
          ),
          Icon(
            Icons.fingerprint,
            color: Colors.green,
          ),
        ]));
  }
}
