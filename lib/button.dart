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
        body: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(child: Text('RaisedButton'), onPressed: () => {}),
              FlatButton(child: Text('FlatButton'), onPressed: () => {}),
              OutlineButton(child: Text('OutlineButton'), onPressed: () => {}),
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {},
              ),
              FlatButton(
                  child: Text('自定义FlatButton'),
                  textColor: Colors.white,
                  color: Colors.yellow,
                  highlightColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () => {}),
            ],
          ),
        ));
  }
}
