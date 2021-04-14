import 'Task.dart';

class TasksFormatter {
  Map<int, Task> allTasks;

  TasksFormatter(Map<int, Task> allTasks) {
    this.allTasks = allTasks;
  }

  String printCategoriesAndTasksAreThem() {
    var result = <String>[];
    var categoriesUnique = <String>{};
    allTasks.values.forEach((element) {
      categoriesUnique.add(element.categories);
    });
    var categories = categoriesUnique.toList();
    for (var i = 0; i < categories.length; i++) {
      var cat = '${categories[i]} _';
      for (var entry in allTasks.values) {
        var value = entry;
        if (value.categories.compareTo(categories[i]) == 0) {
          cat += '${value.id}.${value.name}_';
        }
      }
      result.add(cat);
    }
    return _formattedResult(result);
  }

  String _formattedResult(List<String> categoriesAndTasks) {
    var result = '';
    for (var i = 0; i < categoriesAndTasks.length; i++) {
      var s = categoriesAndTasks[i];
      var temp = s.split('_');
      result += 'Categories: ${temp[0]} - Tasks are:\n';
      for (var j = 1; j < temp.length; j++) {
        result += '${temp[j]}\n';
      }
    }
    return result;
  }
}
