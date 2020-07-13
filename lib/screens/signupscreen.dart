import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                alignment: Alignment.center,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green[400],
                  child: Text(
                    'Sign up as Patient',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    print("Click on the button to signup as patient");
                  },
                )),
            Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green[400],
                  child: Text(
                    'Sign up as Doctor',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    print("Click on the button to signup as Doctor");
                  },
                )),
          ],
        ),
      ),
    );
  }
}
