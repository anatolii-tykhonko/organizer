import 'DayOfWeek.dart';
import 'TaskCreator.dart';
import 'TasksFormatter.dart';
import 'ToDoList.dart';

void main() {
  var organizer = ToDoList();
  var taskCreator = TaskCreator();
  organizer.addTask(null);
  var task1 = taskCreator.create();
  organizer.addTask(task1);
  var task2 = taskCreator.create();
  organizer.addTask(task2);
  var task3 = taskCreator.create();
  organizer.addTask(task3);
  var task4 = taskCreator.create();
  organizer.addTask(task4);
  var task5 = taskCreator.create();
  organizer.addTask(task5);
  organizer.deleteTask(2);
  var printFormat = TasksFormatter(organizer.tasks).printCategoriesAndTasksAreThem();
  print(printFormat);

}
