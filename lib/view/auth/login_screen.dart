import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mangomarket/view/widgets/custom_text.dart';
import 'package:mangomarket/view/widgets/custom_text_form_field.dart';

import '../../constance.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Welcome',
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Sign Up',
                  fontSize: 18,
                  color: primaryColor,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomText(
              text: 'Sign in to Continue',
              fontSize: 14,
              color: Colors.grey,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              text: 'Email',
              hint: 'whdans007@hanmail.net',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              text: 'Password',
              hint: '********',
              onSave: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 10),
            CustomText(
              text: 'Forget Password?',
              fontSize: 14,
              alignment: Alignment.topRight,
            )
          ],
        ),
      ),
    );
  }
}
