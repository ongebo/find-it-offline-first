import 'package:findit_offline_first/ui/home/home.dart';
import 'package:findit_offline_first/ui/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find It'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Login to Find It',
              textAlign: TextAlign.center,
              textScaleFactor: 1.8,
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter Email', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Enter Password', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: _onLoginClick,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\' Have an Account?'),
                SizedBox(
                  width: 8.0,
                ),
                FlatButton(
                    color: Colors.blueGrey,
                    onPressed: _onSignUpClick,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onLoginClick() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }

  void _onSignUpClick() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
  }
}
