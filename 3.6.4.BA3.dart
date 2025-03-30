import 'prize.dart';
import 'task.dart';
import 'settings.dart';
import '3.6.4.BA2.dart';

// see notes.txt //

class MockDataRepository implements DataBaseRepository{
  List<Task> dailyTasks = [];
  List<Task> weeklyTasks = [];
  List<Task> deadlineTasks = [];
  List<Task> questTasks = [];
  List<Prize> prizesWon = [];
  int taskIdCounter = 0;
  int dailyCompleted = 0;
  int weeklyCompleted = 0;
  int deadlineCompleted = 0;
  int questCompleted = 0;
  Settings? userSettings;
  
  @override
  void addDaily(String data) {
    dailyTasks.add(Task(taskIdCounter, 'Daily', data, null, null, null, false));
    taskIdCounter++;
  }
  
  @override
  void addWeekly(String data, day) {
    weeklyTasks.add(Task(taskIdCounter, 'Weekly', data, null, null, day, false));
    taskIdCounter++;
  }

  @override
  void addDeadline(String data, date, time) {
    deadlineTasks.add(Task(taskIdCounter, 'Deadline', data, date, time, null, false));
    taskIdCounter++;
  }
  
  @override
  void addQuest(String data) {
    questTasks.add(Task(taskIdCounter, 'Quest', data, null, null, null, false));
    taskIdCounter++;
  }
  
    @override
  void addPrize(String data) {
    prizesWon.add(Prize(data));
  }
  
  @override
  void completeDaily(String dataTaskId) {
    for (int i = 0; i < dailyTasks.length; i++) {
      if (dailyTasks[i].taskId == dataTaskId) {
        dailyTasks[i].isDone = true;
        dailyCompleted++;
      }
    }
  }
  
  @override
  void completeWeekly(String dataTaskId) {
    for (int i = 0; i < weeklyTasks.length; i++) {
      if (weeklyTasks[i].taskId == dataTaskId) {
        weeklyTasks[i].isDone = true;
        dailyCompleted++;
      }
    }
  }
  
  @override
  void completeDeadline(String dataTaskId) {
    for (int i = 0; i < deadlineTasks.length; i++) {
      if (deadlineTasks[i].taskId == dataTaskId) {
        deadlineTasks[i].isDone = true;
        weeklyCompleted++;
        deadlineTasks.remove(deadlineTasks[i]);
      }
    }
  }

  @override
  void completeQuest(String dataTaskId) {
    for (int i = 0; i < questTasks.length; i++) {
      if (questTasks[i].taskId == dataTaskId) {
        questTasks[i].isDone = true;
        weeklyCompleted++;
        questTasks.remove(questTasks[i]);
      }
    }
  }
  @override
  void deleteDaily(String dataTaskId) {
    for (int i = 0; i < dailyTasks.length; i++) {
      if (dailyTasks[i].taskId == dataTaskId) {
        dailyTasks.remove(dailyTasks[i]);
      }
    }
  }
  
  @override
  void deleteWeekly(String dataTaskId) {
    for (int i = 0; i < weeklyTasks.length; i++) {
      if (weeklyTasks[i].taskId == dataTaskId) {
        weeklyTasks.remove(weeklyTasks[i]);
      }
    }
  }
    
  @override
  void deleteDeadline(String dataTaskId) {
    for (int i = 0; i < deadlineTasks.length; i++) {
      if (deadlineTasks[i].taskId == dataTaskId) {
        deadlineTasks.remove(deadlineTasks[i]);
      }
    }
  }
  
  @override
  void deleteQuest(String dataTaskId) {
    for (int i = 0; i < questTasks.length; i++) {
      if (questTasks[i].taskId == dataTaskId) {
        questTasks.remove(questTasks[i]);
      }
    }
  }

  @override
  void editDaily(String dataTaskId, data) {
    for (int i = 0; i < dailyTasks.length; i++) {
      if (dailyTasks[i].taskId == dataTaskId) {
        dailyTasks[i].taskDesctiption = data;
      }
    }
  }
  
  @override
  void editWeekly(String dataTaskId, data, day) {
    for (int i = 0; i < weeklyTasks.length; i++) {
      if (weeklyTasks[i].taskId == dataTaskId) {
        weeklyTasks[i].taskDesctiption = data;
        weeklyTasks[i].dayOfWeek = day;
      }
    }
  }
  
  @override
  void editDeadline(String dataTaskId, data, date, time) {
    for (int i = 0; i < deadlineTasks.length; i++) {
      if (deadlineTasks[i].taskId == dataTaskId) {
        deadlineTasks[i].taskDesctiption = data;
        deadlineTasks[i].deadlineDate = date;
        deadlineTasks[i].deadlineTime = time;
      }
    }
  }
  
  @override
  void editQuest(String dataTaskID, data) {
    for (int i = 0; i < questTasks.length; i++) {
      if (questTasks[i].taskId == dataTaskID) {
        questTasks[i].taskDesctiption = data;
      }
    }
  }

  @override
  Settings setSettings(bool? dataAppSkinColor, String dataLanguage, String dataLocation, bool dataSplashscreen, int dataStartOfDay, int dataStartOfWeek) {
    return userSettings = Settings(appSkinColor: dataAppSkinColor, language: dataLanguage, location: dataLocation, splashscreen: dataSplashscreen, startOfDay: dataStartOfDay, startOfWeek: dataStartOfWeek);
  }
  
  @override
  int getCompletedDailyTasks() {
    return dailyCompleted;
  }
  
  @override
  int getCompletedWeeklyTasks() {
    return weeklyCompleted;
  }
  
  @override
  int getCompletedDeadlineTasks() {
    return deadlineCompleted;
  }
  
  @override
  int getCompletedQuestTasks() {
    return questCompleted;
  }
  
  @override
  List<Task> getDailyTasks() {
    return dailyTasks;
  }
  
  @override
  List<Task> getWeeklyTasks() {
    return weeklyTasks;
  } 
  
  @override
  List<Task> getDeadlineTasks() {
    return deadlineTasks;
  }
  
  @override
  List<Task> getQuestTasks() {
    return questTasks;
  }
  
  @override
  List<Prize> getPrizes() {
    return prizesWon;
  }
  
  @override
  Settings? getSettings() {
    return userSettings;
  }
  
  @override
  int getTaskIdCounter() {
    return taskIdCounter;
  }
}