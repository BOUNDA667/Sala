import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/my_controller.dart';
import 'package:sala/core/models/todo_model.dart';
import 'package:sala/widgets/task_widget.dart';

class TaskController extends MyController {
  RxInt selectedNavIndex = RxInt(0);
  Rx<DateTime> selectedDay = Rx(DateTime.now());
  RxList<Todo> todos = RxList<Todo>();
  RxBool addTime = RxBool(false);
  RxBool repeatAfterCompletion = RxBool(false);
  final Rx<Priority> priority = Priority.HIGH.obs;

  void changeNavIndex(int index) {
    selectedNavIndex.value = index;
    update();
  }

  void setSelectedDay(DateTime day) {
    selectedDay.value = day;
    update();
  }

  RxList<TaskItem> items = RxList<TaskItem>([
    TaskItem(
      iconBackground: Colors.purple.shade200,
      iconData: Icons.translate,
      title: 'Learn English',
      subtitle: 'Start at 1:20 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.blue.shade100,
      iconData: Icons.fitness_center,
      title: 'Morning Workout',
      subtitle: '6:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.orange.shade100,
      iconData: Icons.book,
      title: 'Read 20 Pages',
      subtitle: '8:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.green.shade100,
      iconData: Icons.nature,
      title: 'Walk in Nature',
      subtitle: '5:30 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.red.shade100,
      iconData: Icons.email,
      title: 'Check Emails',
      subtitle: '9:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.teal.shade100,
      iconData: Icons.code,
      title: 'Flutter Practice',
      subtitle: '2:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.deepOrange.shade100,
      iconData: Icons.cleaning_services,
      title: 'Clean Desk',
      subtitle: '10:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.indigo.shade100,
      iconData: Icons.shopping_cart,
      title: 'Grocery Shopping',
      subtitle: '4:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.brown.shade200,
      iconData: Icons.local_cafe,
      title: 'Coffee with Friend',
      subtitle: '3:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.cyan.shade100,
      iconData: Icons.brush,
      title: 'Draw Sketch',
      subtitle: '7:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.pink.shade100,
      iconData: Icons.music_note,
      title: 'Practice Guitar',
      subtitle: '6:30 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.grey.shade300,
      iconData: Icons.tv,
      title: 'Watch Tutorial',
      subtitle: '8:30 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.green.shade300,
      iconData: Icons.check_circle,
      title: 'Daily Review',
      subtitle: '9:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.amber.shade100,
      iconData: Icons.wb_sunny,
      title: 'Sunbath',
      subtitle: '11:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.deepPurple.shade100,
      iconData: Icons.laptop_mac,
      title: 'Fix Bug #312',
      subtitle: '10:30 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.lightBlue.shade100,
      iconData: Icons.pets,
      title: 'Feed the Dog',
      subtitle: '7:30 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.red.shade300,
      iconData: Icons.event,
      title: 'Team Meeting',
      subtitle: '11:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.blueGrey.shade100,
      iconData: Icons.camera,
      title: 'Photo Editing',
      subtitle: '3:30 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.yellow.shade200,
      iconData: Icons.ac_unit,
      title: 'Meditate',
      subtitle: '6:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.tealAccent.shade100,
      iconData: Icons.bug_report,
      title: 'Report Bugs',
      subtitle: '1:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.orangeAccent.shade100,
      iconData: Icons.language,
      title: 'Duolingo Session',
      subtitle: '8:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.indigo.shade200,
      iconData: Icons.calculate,
      title: 'Math Practice',
      subtitle: '5:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.grey.shade200,
      iconData: Icons.calendar_today,
      title: 'Plan Week',
      subtitle: 'Sunday 7:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.pinkAccent.shade100,
      iconData: Icons.favorite,
      title: 'Date Night',
      subtitle: 'Friday 8:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.greenAccent.shade100,
      iconData: Icons.grass,
      title: 'Water Plants',
      subtitle: 'Saturday 9:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.blue.shade50,
      iconData: Icons.school,
      title: 'Online Course',
      subtitle: '2:30 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.deepOrangeAccent.shade100,
      iconData: Icons.kitchen,
      title: 'Cook Dinner',
      subtitle: '7:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.lime.shade100,
      iconData: Icons.assignment,
      title: 'Finish Homework',
      subtitle: '9:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.cyanAccent.shade100,
      iconData: Icons.directions_bike,
      title: 'Evening Ride',
      subtitle: '6:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.amber.shade300,
      iconData: Icons.lightbulb,
      title: 'Brainstorm Ideas',
      subtitle: '3:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.brown.shade100,
      iconData: Icons.access_alarm,
      title: 'Set Alarms',
      subtitle: 'Before Bed',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.indigoAccent.shade100,
      iconData: Icons.car_rental,
      title: 'Wash Car',
      subtitle: 'Saturday 10:00 AM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.deepPurpleAccent.shade100,
      iconData: Icons.edit,
      title: 'Write Journal',
      subtitle: '10:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.green.shade200,
      iconData: Icons.local_hospital,
      title: 'Doctor Appointment',
      subtitle: '3:00 PM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.blueGrey.shade200,
      iconData: Icons.cloud,
      title: 'Backup Data',
      subtitle: '2:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.orange.shade300,
      iconData: Icons.sticky_note_2,
      title: 'Review Notes',
      subtitle: '9:30 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.yellowAccent.shade100,
      iconData: Icons.wifi,
      title: 'Fix WiFi Router',
      subtitle: 'Monday 11:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.purple.shade300,
      iconData: Icons.games,
      title: 'Play Chess',
      subtitle: '8:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.teal.shade300,
      iconData: Icons.group,
      title: 'Team Sync',
      subtitle: '10:00 AM',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.limeAccent.shade100,
      iconData: Icons.library_books,
      title: 'Study History',
      subtitle: '5:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.redAccent.shade100,
      iconData: Icons.phone,
      title: 'Call Mom',
      subtitle: 'Evening',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.cyan.shade200,
      iconData: Icons.build,
      title: 'Fix Door',
      subtitle: 'Saturday 2:00 PM',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.grey.shade400,
      iconData: Icons.storage,
      title: 'Clean Storage',
      subtitle: 'Weekend',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.lightBlue.shade300,
      iconData: Icons.flight_takeoff,
      title: 'Book Tickets',
      subtitle: 'Monday',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.green.shade400,
      iconData: Icons.emoji_events,
      title: 'Track Goals',
      subtitle: 'Nightly',
      isCompleted: true,
    ),
    TaskItem(
      iconBackground: Colors.deepOrange.shade300,
      iconData: Icons.visibility,
      title: 'Eye Exercises',
      subtitle: 'Every 2 Hours',
      isCompleted: false,
    ),
    TaskItem(
      iconBackground: Colors.purpleAccent.shade100,
      iconData: Icons.light_mode,
      title: 'Open Windows',
      subtitle: 'Morning',
      isCompleted: true,
    ),
  ]);
}
