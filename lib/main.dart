import 'package:flutter/material.dart';
import 'package:mangomarket/screen/login.dart';

import 'screen/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}
