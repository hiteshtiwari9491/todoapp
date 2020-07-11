import 'base_model.dart';

class TodoListViewModel extends BaseModel {
  TodoListViewModel._();

  static TodoListViewModel _instance = TodoListViewModel._();

  factory TodoListViewModel() => _instance;

  //
  String CREATE_TODO = "create_todo";
  String UPDATE_TODO = "update_todo";
  String READ_TODO = "read_todo";
  String DELETE_TODO = "delete_todo";

  List<String> todoList = [
    "A dummy element",
  ];

  Future addToList(String task) async {
    try {
      setStatus(CREATE_TODO, Status.Loading);
      todoList.add(task);
      setStatus(CREATE_TODO, Status.Done);
    } catch (err) {
      setError(CREATE_TODO, "Error occurred while adding to List! Try again.");
    }
  }

  Future updateTodo(int index, String newTask) async {
    try {
      setStatus(UPDATE_TODO, Status.Loading);
      todoList[index] = newTask;
      setStatus(UPDATE_TODO, Status.Done);
    } catch (err) {
      setError(
          UPDATE_TODO, "Error occurred while updating the List! Try again.");
    }
  }

  Future readList() async {
    try {
      return todoList;
    } catch (err) {
      setError(READ_TODO, "Error occurred while adding to List! Try again.");
    }
  }

  Future deleteTodoList(int index) async {
    try {
      setStatus(DELETE_TODO, Status.Loading);
      todoList.removeAt(index);
      setStatus(DELETE_TODO, Status.Done);
    } catch (err) {
      setError(DELETE_TODO, "Error occurred while deleting task! Try again.");
    }
  }
}
