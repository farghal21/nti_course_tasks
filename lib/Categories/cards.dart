import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cards extends StatelessWidget {
  final String title;
  final String trailing;
  final String subtitle;
  final SvgPicture icon;
  final Color trailingclolr;
  final Color textclolr;
  final Color containerColor;
  final bool isTrue;

  const Cards({
    super.key,
    required this.title,
    required this.trailing,
    required this.subtitle,
    required this.icon,
    required this.trailingclolr,
    required this.textclolr,
    required this.containerColor,
    this.isTrue = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListTile(
        isThreeLine: true,
        leading: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: icon),
        title: Text(title,
            style: isTrue
                ? TextStyle(fontWeight: FontWeight.bold)
                : TextStyle(color: Color(0xff6E6A7C))),
        trailing: Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
                color: trailingclolr,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(
              trailing,
              style: TextStyle(color: textclolr, fontWeight: FontWeight.bold),
            )),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
