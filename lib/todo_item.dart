
import 'package:hive/hive.dart';
part 'todo_item.g.dart'; //use to generate hive 

@HiveType(typeId: 1)
class TodoItem {
  @HiveField(0)
  final String title;
   @HiveField(1,defaultValue: false)
  final bool isCompleted;

  TodoItem({required this.title, required this.isCompleted});
}