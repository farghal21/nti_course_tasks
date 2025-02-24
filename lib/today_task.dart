import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_course_tasks/Categories/buttons.dart';
import 'package:nti_course_tasks/Categories/cards.dart';
import 'package:nti_course_tasks/StyleFolder/taskIcons.dart';

class TodayTask extends StatelessWidget {
  const TodayTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Today Tasks",
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
                icon: Icon(Icons.add, color: Colors.black),
                label: Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffCEEBDC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  elevation: 0,
                ),
              ),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttons(
                        adress: "All",
                        textColor: Colors.white,
                        isSelected: true,
                      ),
                      Buttons(
                        adress: "Future",
                        textColor: Colors.black,
                      ),
                      Buttons(
                        adress: "Missed",
                        textColor: Colors.black,
                      ),
                      Buttons(
                        adress: "Done",
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Results",
                            style: TextStyle(fontSize: 20),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 40),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffCEEBDC)),
                          child: Text(
                            '5',
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                  Cards(
                    containerColor: Colors.black,
                    title: "Work Task",
                    subtitle: 'Go to supermarket to buy some milk & eggs',
                    trailing: 'Future',
                    icon: SvgPicture.asset('assets/icons/Bag.svg'),
                    textclolr: Colors.black,
                    trailingclolr: Color.fromARGB(255, 240, 239, 239),
                  ),
                  Cards(
                    containerColor: Colors.black,
                    title: "Work Task",
                    subtitle: 'Go to supermarket to buy some milk & eggs',
                    trailing: 'Done',
                    icon: SvgPicture.asset('assets/icons/Bag.svg'),
                    textclolr: Colors.white,
                    trailingclolr: Color(0xff149954),
                  ),
                  Cards(
                    containerColor: Color(0xffFF0084),
                    title: "Home Task",
                    subtitle: 'Add new feature for Do It app and commit it',
                    trailing: 'Done',
                    icon: SvgPicture.asset('assets/icons/Home.svg'),
                    textclolr: Colors.white,
                    trailingclolr: Color(0xff149954),
                    isTrue: false,
                  ),
                  Cards(
                    containerColor: Color(0xff149954),
                    title: "Personal Task",
                    subtitle: 'Improve my English skills by trying to speek',
                    trailing: 'In Progress',
                    icon: SvgPicture.asset('assets/icons/Person.svg'),
                    textclolr: Colors.black,
                    trailingclolr: Color(0xffCEEBDC),
                    isTrue: false,
                  ),
                  Cards(
                    containerColor: Color(0xffFF0084),
                    title: "Home Task",
                    subtitle: 'Add new feature for Do It app and commit it',
                    trailing: 'Done',
                    icon: SvgPicture.asset('assets/icons/Home.svg'),
                    textclolr: Colors.white,
                    trailingclolr: Color(0xff149954),
                    isTrue: false,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
