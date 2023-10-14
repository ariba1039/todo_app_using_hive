import 'package:hive/hive.dart';
import 'package:todo_app_using_hive/todo_item.dart';

class TodoService {
  final String _boxName = 'todo_box';
  Future<Box<TodoItem>> get _box async =>
      await Hive.openBox<TodoItem>(_boxName);

//Crud operations

//create function
  Future<void> addItem(TodoItem todoItem) async {
    var box = await _box;
    await box.add(todoItem);
  }
//update function
  Future<List<TodoItem>> getAllTodos(TodoItem todoItem) async {
    var box = await _box;
    return box.values.toList();
  }
  //delete function
}
