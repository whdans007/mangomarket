import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mangomarket/core/view_model/auth_view_mode.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<AuthViewModel>(
            init: AuthViewModel(),
            builder: (value) => Text('${value.counter}'),
          ),
          GetBuilder<AuthViewModel>(
            builder: (value) => RaisedButton(
              child: Text('Increment'),
              onPressed: () {
                value.increment();
              },
            ),
          )
        ],
      ),
    );
  }
}
