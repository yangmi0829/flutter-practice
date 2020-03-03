import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
void main() async {
  var res = await loadAsset();
  print(res);
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}