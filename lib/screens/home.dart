import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/view_models/todo_list_view_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TodoListViewModel _provider;

  @override
  void initState() {
    super.initState();
    _provider = Provider.of<TodoListViewModel>(context, listen: false);
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: _createTodoList(),
            )
          ],
        ),
      ),
    );
  }

  _createTodoList() {
    List<Widget> listItems = [];
    _provider.todoList.forEach(
      (element) {
        listItems.add(
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300],
            ),
            child: Text(
              element,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
    return listItems;
  }
}
