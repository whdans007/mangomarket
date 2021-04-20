import 'package:flutter/material.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);
bool obserText = true;

void vaildation() {
  final FormState _from = _formKey.currentState;
  if (_from.validate()) {
    print('Yes');
  } else {
    print('No');
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please fill Email';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Email is invaild';
                        }
                        return '';
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            setState(() {
                              obserText = !obserText;
                            });
                          },
                          child: Icon(
                            obserText == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please fill Password';
                        }
                        if (value.length < 8) {
                          return 'Password is too short';
                        }
                        return '';
                      },
                      obscureText: obserText,
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text('Login'),
                        color: Colors.grey,
                        onPressed: () {
                          vaildation();
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('I have not account !'),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Text(
                            'SignUp',
                            style: TextStyle(color: Colors.cyan, fontSize: 20),
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (ctx) => SignUp()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
