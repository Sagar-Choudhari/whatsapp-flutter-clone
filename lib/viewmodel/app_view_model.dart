import 'package:flutter/material.dart';

class AppViewModel {
  // List<Task> tasks = <Task>[];

  Color tealGreenDark = const Color(0xFF075E54);
  Color tealGreenLightlyDark = const Color(0xFF128C7E);
  Color tealGreenLight = const Color(0xFF1EBEA5);
  Color tealGreenLighting = const Color(0xFF77D7C8);
  Color tealGreenLighter = const Color(0xFFEDF8F5);
  Color lightGreen = const Color(0xFF25D366);
  Color lightWhite = const Color(0xFFFFFFFF);
  Color lightGrey = const Color(0xFFEDF8F5);
  Color outGoingChat = const Color(0xFFDCF8C6);
  Color checkMark = const Color(0xFF34B7F1);
  Color chatBackground = const Color(0xFFECE5DD);
  Color textLight = const Color(0xFF8F8F8F);
  Color textDark = const Color(0xFF000000);

  // int get numTasks => tasks.length;
  //
  // int get numTasksRemaining => tasks.where((task) => !task.complete).length;
  //
  // String get username => user.username;
  //
  // void addTask(Task newTask) {
  //   tasks.add(newTask);
  //   notifyListeners();
  // }
  //
  // bool getTaskValue(int taskIndex) {
  //   return tasks[taskIndex].complete;
  // }
  //
  // String getTaskTitle(int taskIndex) {
  //   return tasks[taskIndex].title;
  // }
  //
  // void deleteTask(int taskIndex) {
  //   tasks.removeAt(taskIndex);
  //   notifyListeners();
  // }
  //
  // void setTaskValue(int taskIndex, bool taskValue) {
  //   tasks[taskIndex].complete = taskValue;
  //   notifyListeners();
  // }
  //
  // void updateUsername(String newUsername) {
  //   user.username = newUsername;
  //   notifyListeners();
  // }
  //
  // void deleteAllTasks() {
  //   tasks.clear();
  //   notifyListeners();
  // }
  //
  // void deleteCompletedTasks() {
  //   tasks = tasks.where((task) => !task.complete).toList();
  //   notifyListeners();
  // }
  //
  // void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
  //   showModalBottomSheet(
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  //       clipBehavior: Clip.antiAliasWithSaveLayer,
  //       context: context,
  //       builder: ((context) {
  //         return bottomSheetView;
  //       }));
  // }
}
