import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/routes/routes.dart';
import 'package:todo_app/utils/navigator_keys.dart';
import 'package:todo_app/view_models/todo_list_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoListViewModel>(
          create: (context) => TodoListViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: NavigationKeys.globalNavigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: SetupRoutes.initialRoute,
        routes: SetupRoutes.routes,
      ),
    );
  }
}
