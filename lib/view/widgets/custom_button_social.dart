import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPressed;

  const CustomButtonSocial({
    Key key,
    this.text,
    this.imageName,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(
              imageName,
              width: 30,
              height: 30,
            ),
            SizedBox(width: 70),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
