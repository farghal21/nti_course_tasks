import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_course_tasks/Categories/buttons.dart';
import 'package:nti_course_tasks/StyleFolder/taskIcons.dart';

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
              icon: SvgPicture.asset('assets/icons/delete.svg'),
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
                backgroundColor: Color(0xffE4312B),
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
                Container(
                  //height: 63,
                  //width: 331,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xffFFE4F2),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: SvgPicture.asset("assets/icons/Home2.svg")),
                    title: Text("Task Group",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily:
                                "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                            color: Color(0xff6E6A7C))),
                    subtitle: Text(
                      "Home",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                          fontFamily:
                              "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                          color: Color(0xff24252C)),
                    ),
                  ),
                ),
                Container(
                  //height: 63,
                  //width: 331,
                  margin: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    title: Text("Task Group",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily:
                                "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                            color: Color(0xff6E6A7C))),
                    subtitle: Text(
                      "Grocery Shopping App",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                          fontFamily:
                              "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                          color: Color(0xff24252C)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    title: Text("Description",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily:
                                "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                            color: Color(0xff6E6A7C))),
                    subtitle: Text(
                      "Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products.",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                          fontFamily:
                              "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                          color: Color(0xff24252C)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    title: Text("Star Date",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily:
                                "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                            color: Color(0xff6E6A7C))),
                    leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: SvgPicture.asset("assets/icons/calendar.svg")),
                    subtitle: Row(
                      children: [
                        Text(
                          "01 May, 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              fontFamily:
                                  "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                              color: Color(0xff24252C)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "10:00 am",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              fontFamily:
                                  "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                              color: Color(0xff24252C)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: ListTile(
                    title: Text("End Date",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            fontFamily:
                                "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                            color: Color(0xff6E6A7C))),
                    leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: SvgPicture.asset("assets/icons/calendar.svg")),
                    subtitle: Row(
                      children: [
                        Text(
                          "30 June, 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              fontFamily:
                                  "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                              color: Color(0xff24252C)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "10:00 am",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              fontFamily:
                                  "assets/fonts/Lexend_Deca/LexendDeca-Black.ttf",
                              color: Color(0xff24252C)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Buttons(
              adress: 'Mark as Done',
              textColor: Colors.white,
              backgroundColor: Color(0xff149954),
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
              textColor: Color(0xff149954),
              backgroundColor: Color(0xff149954),
              isSelected: false,
              buttonHeight: 52.0001106262207,
              buttonWidth: 331,
              shapeisSelected: true,
              bordeside: Color(0xff149954),
            ),
          ],
        ),
      ),
    );
  }
}
