import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mangomarket/core/view_model/auth_view_mode.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthViewModel viewModel = Get.put(AuthViewModel());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Text('${viewModel.counter.value}'),
          ),
          RaisedButton(
            child: Text('Increment'),
            onPressed: () {
              viewModel.increment();
            },
          ),
        ],
      ),
    );
  }
}
