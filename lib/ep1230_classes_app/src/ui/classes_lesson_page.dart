import 'package:flutter/material.dart';


class ClassedLessonPage extends StatefulWidget {
  const ClassedLessonPage({Key? key}) : super(key: key);

  @override
  State<ClassedLessonPage> createState() => _ClassedLessonPageState();
}

class _ClassedLessonPageState extends State<ClassedLessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 120,
            color: Color.fromRGBO(206, 203, 191, 1),
          ),
          SizedBox(
            height: 72,
            child: Row(
              children: [
                Container(
                  width: 72,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
