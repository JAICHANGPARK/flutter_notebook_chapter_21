import 'package:flutter/material.dart';

class ClassesMainPage extends StatefulWidget {
  const ClassesMainPage({Key? key}) : super(key: key);

  @override
  State<ClassesMainPage> createState() => _ClassesMainPageState();
}

class _ClassesMainPageState extends State<ClassesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 85, 90, 1),
      // backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          Divider(
            color: Colors.black,
            height: 0,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black),
            height: 58,
            child: Row(
              children: [
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, right: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                )),
                Container(
                  width: 72,
                  margin: EdgeInsets.only(top: 2, left: 2, bottom: 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 85, 90, 1),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 58,
            decoration: BoxDecoration(color: Colors.black),
            child: Container(
              decoration: BoxDecoration(

                color: Color.fromRGBO(220, 85, 90, 1),
              ),
              child: TabBar(
                tabs: [

                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
