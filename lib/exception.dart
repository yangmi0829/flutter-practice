import 'dart:async';

import 'package:flutter/material.dart';

void collectLog(String line){
     //收集日志
     print('收集日志:'+line);
}
void reportErrorAndLog(FlutterErrorDetails details){
    //上报错误和日志逻辑
    print('上报错误和日志逻辑:'+details.exception);
}

FlutterErrorDetails makeDetails(Object obj, StackTrace stack){
    // 构建错误信息
    print('构建错误信息:');
    print(obj);
    print(stack);
}

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    reportErrorAndLog(details);
  };
  runZoned(
    () => runApp(MyApp()),
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        collectLog(line); // 收集日志
      },
    ),
    onError: (Object obj, StackTrace stack) {
      var details = makeDetails(obj, stack);
      reportErrorAndLog(details);
    },
  );
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
    print(1/0);
    return Image.asset('assets/images/man.png');
  }
}