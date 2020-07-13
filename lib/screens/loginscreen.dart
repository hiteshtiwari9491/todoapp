import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Mobile',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    labelText: 'Mobile No',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  //padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.grey[600],
                    child: Text('Go To Dashboard'),
                    onPressed: () {
                      print("clicke me");
                    },
                  )),
            ]),
      ),
    );
  }
}
