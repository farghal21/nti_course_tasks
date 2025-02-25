import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String? title;
  final String? trailing;
  final String? subtitle;
  final Widget? icon;
  final Color? trailingclolr;
  final Color? textclolr;
  final Color? containerColor;
  final bool? isTrue;

  const Cards({
    super.key,
    this.title,
    this.trailing,
    this.subtitle,
    this.icon,
    this.trailingclolr,
    this.textclolr,
    this.containerColor,
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
                color: containerColor ?? Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: icon ?? SizedBox()),
        title: Text(title ?? "",
            style: (isTrue ?? true)
                ? TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf")
                : TextStyle(color: Color(0xff6E6A7C))),
        trailing: Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
                color: trailingclolr ?? Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(
              trailing ?? "",
              style: TextStyle(
                  color: textclolr ?? Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        subtitle: Text(
          subtitle ?? "",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
