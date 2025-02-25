import 'package:flutter/material.dart';
import 'package:nti_course_tasks/StyleFolder/Colors/task_colors.dart';

class Buttons extends StatelessWidget {
  final String adress;
  final Color textColor;
  final Color bordeside;
  final bool isSelected;
  final bool shapeisSelected;
  final Color backgroundColor;
  final double buttonWidth;
  final double buttonHeight;

  const Buttons({
    super.key,
    required this.adress,
    required this.textColor,
    this.isSelected = false,
    this.backgroundColor = Appcolors.appColor,
    this.buttonWidth = 70,
    this.buttonHeight = 28,
    this.shapeisSelected = false,
    this.bordeside = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: shapeisSelected
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
            side: isSelected
                ? BorderSide.none
                : BorderSide(width: .5, color: bordeside),
            elevation: shapeisSelected ? 10 : 0,
            backgroundColor:
                isSelected ? Color(0xff149954) : Appcolors.appColor,
            minimumSize: Size(buttonWidth, buttonHeight)),
        onPressed: () {},
        child: Text(
          adress,
          style: TextStyle(color: textColor),
        ));
  }
}
