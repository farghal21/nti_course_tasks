import 'package:flutter/material.dart';
import 'package:nti_course_tasks/AppScreens/profile_task.dart';
import 'package:nti_course_tasks/StyleFolder/Colors/task_colors.dart';

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
          scaffoldBackgroundColor: Appcolors.appColor,
          appBarTheme: AppBarTheme(backgroundColor: Appcolors.appColor)),
      debugShowCheckedModeBanner: false,
      home: ProfileTask(),
    );
  }
}
