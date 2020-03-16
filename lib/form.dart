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

  GlobalKey _formKey = new GlobalKey<FormState>();

//定义一个controller
  TextEditingController _usernameController = new TextEditingController();

  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: Text('按钮')),
        body: Column(
          children: <Widget>[
            Form(
                key: _formKey,
                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        controller: _usernameController,
                        validator: (v) {
                          return v.length > 0 ? null : '账号不能为空';
                        },
                        decoration: InputDecoration(
                            labelText: '账号',
                            hintText: '请输入账号',
                            prefixIcon: Icon(Icons.person))),
                    TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (v) {
                          return v.length > 5 && v.length < 16
                              ? null
                              : '密码长度为6-15位';
                        },
                        decoration: InputDecoration(
                            labelText: '密码',
                            hintText: '请输入密码',
                            prefixIcon: Icon(Icons.lock))),
                    RaisedButton(
                        child: Text('登陆'),
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            print('success');
                            print("username:" + _usernameController.text);
                            print("password:" + _passwordController.text);
                          }
                        })
                  ],
                ))
          ],
        ));
  }
}
