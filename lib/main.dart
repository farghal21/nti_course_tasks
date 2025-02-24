import 'package:flutter/material.dart';
import 'package:nti_course_tasks/StyleFolder/taskColors.dart';
import 'package:nti_course_tasks/edit_task.dart';
import 'package:nti_course_tasks/today_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Taskcolors.appColor,
          appBarTheme: AppBarTheme(backgroundColor: Taskcolors.appColor)),
      debugShowCheckedModeBanner: false,
      home: EditTask(),
    );
  }
}
