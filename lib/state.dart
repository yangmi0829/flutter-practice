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
        home: MyHomePage(title: 'Flutter Demo Home Page')
    );
  }
}

class MyHomePage extends StatelessWidget{

  MyHomePage({Key key,this.title}):super(key:key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('MyHomePage'),
      ),
      body:  Container(
        child: new Row(
          children: [new TapboxA(), new ParentWidget()]
        )
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidget createState() => new _ParentWidget();
  
}
class _ParentWidget extends State<ParentWidget> {
  bool _active = false;

   void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
         active: _active,
        onChanged: _handleTapboxChanged,
      )
    );
  }
  
}

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active : false, @required this.onChanged})
    :super(key:key);
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        width: 100,
        height: 100,
        color: active ? Colors.red: Colors.green,
      )
    );
  }
  
}

class TapboxA extends StatefulWidget  {
  
  @override
  _TapboxAState createState() => new _TapboxAState();
  
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        margin:EdgeInsets.all(5.0),
        width: 100,
        height: 100,
        decoration: new BoxDecoration(
        color: _active ? Colors.red : Colors.green,
      ),
      child: Text('$_active')
      )
    );
  }
  
}