import 'package:flutter/material.dart';

class Pankaj extends StatefulWidget {
  @override
  _PankajState createState() => _PankajState();
}

class _PankajState extends State<Pankaj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
          TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Enter your to do list",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    ),
            IconButton(
              onPressed: () {
                //List
              },
              icon: Icon(Icons.add),
              color: Colors.amber,
            ),

          ]
    )
    );}
}
