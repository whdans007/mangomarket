import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/auth/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
