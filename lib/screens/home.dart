import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(

        title: Text('Demo app'),
        centerTitle: true,
       // elevation: 5.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.control_point,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/listscreen');
              // do something
            },
          )
        ],
      ),
    );
  }
}

