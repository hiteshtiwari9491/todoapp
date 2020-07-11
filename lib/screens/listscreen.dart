import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to list"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Enter to your todo list",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    print("TEXT ENTERED IS  - ${_textEditingController.text}");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
