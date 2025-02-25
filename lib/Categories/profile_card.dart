import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_course_tasks/StyleFolder/Icons/taskIcons.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final Widget icon;
  const ProfileCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
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
        child: Row(
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Color(0xff24252C),
                  fontFamily: "assets/fonts/Lexend_Deca/LexendDeca-Regular.ttf",
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
            Spacer(),
            SvgPicture.asset(
              AppIcons.profileArrow,
              width: 24,
              height: 24,
            ),
          ],
        ));
  }
}
