import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_course_tasks/Categories/profile_card.dart';
import 'package:nti_course_tasks/StyleFolder/Icons/taskIcons.dart';

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
                "assets/images/palestineimage.png",
                fit: BoxFit.cover,
              )),
          ProfileCard(
              title: "Update Profile",
              icon: SvgPicture.asset(AppIcons.profileperson)),
          ProfileCard(
              title: "History", icon: SvgPicture.asset(AppIcons.history)),
        ],
      ),
    );
  }
}
