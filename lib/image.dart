import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page')
    );
  }
}

class MyHomePage extends StatelessWidget{

  MyHomePage({Key key,this.title}):super(key:key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}