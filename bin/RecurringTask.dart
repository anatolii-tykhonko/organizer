import 'DayOfWeek.dart';
import 'Task.dart';

class RecurringTask implements Task{

  DayOfWeek dayOfWeek;
  @override
  String categories;

  @override
  int id;

  @override
  bool isRepeat;

  @override
  String name;


  RecurringTask(this.id, this.name, this.categories);

  @override
  String toString() {
    return 'Task: $id Categories: $categories  - $name repeat on $dayOfWeek';
  }
}