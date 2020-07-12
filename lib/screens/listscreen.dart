import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/common_widgets/provider_callback.dart';
import 'package:todo_app/view_models/todo_list_view_model.dart';

import '../common_widgets/error_dialog.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  TextEditingController _textEditingController = TextEditingController();
  TodoListViewModel _provider;

  @override
  void initState() {
    super.initState();
    _provider = Provider.of<TodoListViewModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        leading: InkWell(
//          onTap: () {
//            Navigator.pop(context);
//          },
//          child: Center(
//            child: Text(
//              'back',
//              style: TextStyle(fontSize: 12),
//            ),
//          ),
//        ),
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
                    if (_textEditingController.text != null &&
                        _textEditingController.text.isNotEmpty) {
                      providerCallback<TodoListViewModel>(
                        context,
                        task: (provider) async {
                          await provider.addToList(_textEditingController.text);
                        },
                        taskName: (provider) => provider.CREATE_TODO,
                        onSuccess: (provider) async {
                          Navigator.of(context).pop();
                        },
                        onError: (err) {
                          //
                        },
                      );
                    } else {
                      ErrorDialog().show(
                        "Please Enter some task to the list",
                        context: context,
                      );
                    }
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
