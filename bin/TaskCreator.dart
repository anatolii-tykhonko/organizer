import 'dart:io';

import 'DayOfWeek.dart';
import 'PlainTask.dart';
import 'RecurringTask.dart';
import 'Task.dart';

class TaskCreator {
  static int id = 0;


  Task create() {
    id++;
    String name;
    String categories;
    String isRepeat;

    print('Write the task:');
    name = stdin.readLineSync();
    print('Write the categories:');
    categories = stdin.readLineSync();
    print('Is recurring tasks? y/n');
    isRepeat = stdin.readLineSync();
    if (isRepeat.compareTo('y') == 0) {
      print(DayOfWeek.values);
      print('Write the day of week to repeat task:');
      var task = RecurringTask(id, name, categories);
      var indexDayOfWeek = stdin.readLineSync();
      task.dayOfWeek = DayOfWeek.values[int.parse(indexDayOfWeek)];
      return task;
    } else {
      return PlainTask(id, name, categories);
    }
  }
}



