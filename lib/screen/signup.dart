import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mangomarket/screen/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
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

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 500,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'UserName',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please fill Username';
                          } else if (value.length < 2) {
                            return 'Username is too short';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please fill Email';
                          } else if (!regExp.hasMatch(value)) {
                            return 'Email Is Invaild';
                          }
                        },
                      ),
                      TextFormField(
                        obscureText: obserText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obserText = !obserText;
                              });
                              FocusScope.of(context).unfocus();
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
                            return 'Please fill password';
                          } else if (value.length < 8) {
                            return 'Password is too short';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                        ),
                        // 숫자만 입력
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter(RegExp('[0-9]')),
                        ],
                        //
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please fill Phone Number";
                          } else if (value.length < 11) {
                            return 'Phone Number must be 11';
                          }
                        },
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text('Register'),
                          onPressed: () {
                            vaildation();
                          },
                          color: Colors.blueGrey[400],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('I have already an account!'),
                          SizedBox(width: 10),
                          GestureDetector(
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.cyan, fontSize: 20),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (ctx) => Login()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
