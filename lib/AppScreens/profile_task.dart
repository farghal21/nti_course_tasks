import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_course_tasks/Categories/profile_card.dart';
import 'package:nti_course_tasks/StyleFolder/Colors/task_colors.dart';
import 'package:nti_course_tasks/StyleFolder/Icons/taskIcons.dart';
import 'package:nti_course_tasks/StyleFolder/Images/taskImages.dart';

class ProfileTask extends StatelessWidget {
  const ProfileTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 375,
              height: 277,
              child: Image.asset(
                AppImages.palestineImage,
                fit: BoxFit.cover,
              )),
          ProfileCard(
              title: "Update Profile",
              icon: Image.asset(AppImages.personProfuleImage)),
          ProfileCard(
            title: "History",
            icon: SvgPicture.asset(AppIcons.history),
          ),
          Container(
            width: 331,
            height: 63,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  "Selected Option",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      fontFamily:
                          "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf"),
                ),
                isExpanded: true,
                icon: SvgPicture.asset(AppIcons.arrowDrop),
                items: options.map((String options) {
                  return DropdownMenuItem(
                    value: options,
                    child: Row(
                      children: [
                        CircleAvatar(
                            child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(AppImages.palestineImage),
                        )),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello!",
                              style: TextStyle(
                                  color: Appcolors.dropdownTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      "assets/fonts/Lexend_Deca/LexendDeca-Regular.ttf"),
                            ),
                            Text(
                              options,
                              style: TextStyle(
                                  color: Appcolors.dropdownTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      "assets/fonts/Lexend_Deca/LexendDeca-Regular.ttf"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
