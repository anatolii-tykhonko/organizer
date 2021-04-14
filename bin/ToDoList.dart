import 'Task.dart';

class ToDoList{
   Map<int, Task> tasks = {};


   bool addTask(Task oneTask){
    if(oneTask == null || tasks.containsValue(oneTask)){
      print('$oneTask is not saved!');
      return false;
    }
    tasks[oneTask.id] = oneTask;
    print('$oneTask is successful saved.');
    return true;
  }
   bool addAllTask(List<Task> allTask){
    if(allTask == null){
      print('Tasks are not saved!');
      return false;
    }
    for(var i = 0; i < allTask.length; i++){
      tasks[allTask[i].id] = allTask[i];
    }
    print('Tasks are successful saved.');
    return true;
  }
   bool deleteTask(int id){
    if(!tasks.containsKey(id)){
      print('Task with id: $id is not deleted!');
      return false;
    }
    tasks.remove(id);
    print('Task with id: $id is successful deleted.');
    return true;
  }

}

