import 'prize.dart';
import 'task.dart';
import 'settings.dart';

abstract class DataBaseRepository {
  List<Task> getDailyTasks();
  List<Task> getWeeklyTasks();
  List<Task> getDeadlineTasks();
  List<Task> getQuestTasks();
  List<Prize> getPrizes();
  int getTaskIdCounter();
  int getCompletedDailyTasks();
  int getCompletedWeeklyTasks();
  int getCompletedDeadlineTasks();
  int getCompletedQuestTasks();
  Settings? getSettings();
  Settings setSettings(bool? dataAppSkinColor, String dataLanguage, String dataLocation, bool dataSplashscreen, int dataStartOfDay, int dataStartOfWeek);
  void addDaily(String data);
  void addWeekly(String data, day);
  void addDeadline(String data, date, time);
  void addQuest(String data);
  void addPrize(String data);
  void completeDaily(String dataTaskId);
  void completeWeekly(String dataTaskId);
  void completeDeadline(String dataTaskId);
  void completeQuest(String dataTaskId);
  void deleteDaily(String dataTaskId);
  void deleteWeekly(String dataTaskId);
  void deleteDeadline(String dataTaskId);
  void deleteQuest(String dataTaskId);
  void editDaily(String dataTaskId, data);
  void editWeekly(String dataTaskId, data, day);
  void editDeadline(String dataTaskId, data, date, time);
  void editQuest(String dataTaskId, data);
}