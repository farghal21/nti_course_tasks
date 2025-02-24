import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditTaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final SvgPicture? icon;

  const EditTaskCard(
      {super.key, required this.title, required this.subtitle, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListTile(
        leading: icon != null
            ? Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xffFFE4F2),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: icon)
            : null,
        title: Text(title,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 9,
                fontFamily: "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                color: Color(0xff6E6A7C))),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 14,
              fontFamily: "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
              color: Color(0xff24252C)),
        ),
      ),
    );
  }
}
