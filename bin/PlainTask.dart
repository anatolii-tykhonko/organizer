import 'Task.dart';

class PlainTask implements Task{
  @override
  String categories;

  @override
  int id;

  @override
  bool isRepeat;

  @override
  String name;


  PlainTask(this.id, this.name, this.categories);

  @override
  String toString() {
    return 'Task: $id Categories: $categories  - $name';
  }
}