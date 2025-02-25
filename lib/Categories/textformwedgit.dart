import 'package:flutter/material.dart';
import 'package:nti_course_tasks/StyleFolder/Colors/task_colors.dart';

class Textformwedgit extends StatelessWidget {
  final String title;
  final double height;
  final Widget? icon;
  final Color? iconBackgroundColor;
  const Textformwedgit(
      {super.key,
      required this.title,
      this.height = 63,
      this.icon,
      this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 331,
      height: height,
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        onFieldSubmitted: (value) {
          print(value);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  fontFamily: "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                  color: Appcolors.textFormTitleColor)),
          hintText: "Description",
          icon: icon != null
              ? Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: iconBackgroundColor != null
                          ? Appcolors.iconBackgroundColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: icon)
              : null,
        ),
      ),
    );
  }
}
