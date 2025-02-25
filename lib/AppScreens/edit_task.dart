import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_course_tasks/Categories/buttons.dart';
import 'package:nti_course_tasks/Categories/textformwedgit.dart';
import 'package:nti_course_tasks/StyleFolder/Colors/task_colors.dart';
import 'package:nti_course_tasks/StyleFolder/Icons/taskIcons.dart';

class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Task",
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: 'assets/fonts/Lexend_Deca/LexendDeca-Black.ttf'),
        ),
        centerTitle: true,
        leading: SvgPicture.asset(
          AppIcons.arrowBack,
          fit: BoxFit.none,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.delete),
              label: Text(
                "Delete",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily:
                        'assets/fonts/Lexend_Deca/LexendDeca-Black.ttf'),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolors.editTaskAppBarButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                elevation: 0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(
                          color: Color(0xff24252C),
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          fontFamily:
                              'assets/fonts/Lexend_Deca/LexendDeca-Black.ttf'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Believe you can, and you're halfway there.",
                        style: TextStyle(
                            color: Color(0xff24252C),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            fontFamily:
                                'assets/fonts/Lexend_Deca/LexendDeca-Black.ttf'),
                      ),
                    ],
                  ),
                ),
                Textformwedgit(
                  title: "Task Group",
                  icon: SvgPicture.asset(AppIcons.home2),
                  iconBackgroundColor: Appcolors.iconBackgroundColor,
                ),
                Textformwedgit(
                  title: "Task Name",
                ),
                Textformwedgit(
                  title: "Description",
                  height: 142,
                ),
                Textformwedgit(
                  title: "Start Date",
                  icon: SvgPicture.asset(AppIcons.calender),
                ),
                Textformwedgit(
                  title: "End Date",
                  icon: SvgPicture.asset(AppIcons.calender),
                ),
              ],
            ),
            Buttons(
              adress: 'Mark as Done',
              textColor: Colors.white,
              backgroundColor: Appcolors.textFormButtonColor,
              isSelected: true,
              buttonHeight: 52.0001106262207,
              buttonWidth: 331,
              shapeisSelected: true,
            ),
            SizedBox(
              height: 20,
            ),
            Buttons(
              adress: 'Update',
              textColor: Appcolors.textFormButtonColor,
              backgroundColor: Appcolors.textFormButtonColor,
              isSelected: false,
              buttonHeight: 52.0001106262207,
              buttonWidth: 331,
              shapeisSelected: true,
              bordeside: Appcolors.textFormButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
