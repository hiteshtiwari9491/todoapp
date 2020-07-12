import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/common_widgets/provider_callback.dart';
import 'package:todo_app/routes/routes.dart';
import 'package:todo_app/screens/listscreen.dart';
import 'package:todo_app/utils/route_names.dart';
import 'package:todo_app/view_models/todo_list_view_model.dart';

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
              SetupRoutes.changeScreen(context, Routes.ADD_TO_LIST);
            },
          )
        ],
      ),
      body: Consumer<TodoListViewModel>(builder: (context, _provider, child) {
        return ListView(
          shrinkWrap: true,
          children: _createTodoList(_provider),
        );
      }),
    );
  }

  _createTodoList(TodoListViewModel provider) {
    List<Widget> listItems = [];
    provider.todoList.forEach(
      (element) {
        listItems.add(
          ExpansionTile(
            key: UniqueKey(),
            title: Container(
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
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: Row(
                  children: <Widget>[
                    _createButton(
                      'Edit',
                      Colors.green,
                      () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ListScreen(
                            element: element,
                            index: provider.todoList.indexOf(element),
                          ),
                        ));
                      },
                    ),
                    _createButton(
                      'Delete',
                      Colors.redAccent,
                      () {
                        providerCallback<TodoListViewModel>(
                          context,
                          task: (provider) async {
                            await provider.deleteTodoList(
                              provider.todoList.indexOf(element),
                            );
                          },
                          taskName: (provider) => provider.DELETE_TODO,
                          onSuccess: (provider) async {
                            //
                          },
                          onError: (err) {
                            //
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
    return listItems;
  }

  _createButton(String text, Color buttonColor, Function onClick) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: InkWell(
        onTap: onClick,
        child: Container(
          padding: EdgeInsets.all(8),
          color: buttonColor,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
