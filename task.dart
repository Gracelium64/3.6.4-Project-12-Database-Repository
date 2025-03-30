class Task {
  final int taskId;
  final String taskCatagory;
  String taskDesctiption;
  String? deadlineDate;
  String? deadlineTime;
  String? dayOfWeek;
   bool isDone;

  Task(
    this.taskId,
       this.taskCatagory,
       this.taskDesctiption, 
       this.deadlineDate,
       this.deadlineTime,
       this.dayOfWeek,
       this.isDone,
      );

  // @override
  // String toString() {
  //   return 'Id: $taskId; Cat: $taskCatagory;  Desc: $taskDesctiption; DL: $deadlineDate $deadlineTime; Day: $dayOfWeek  Done? ${isDone.toString()};';
  // }
}



/*

temporary not all final for sake of task sheet and current implemantation of interface

*/