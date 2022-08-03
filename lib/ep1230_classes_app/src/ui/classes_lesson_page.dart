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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SizedBox(
              height: 56,
              child: Row(
                children: [
                  Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                    child: IconButton(
                      icon: Icon(
                        Icons.clear,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Color.fromRGBO(206, 203, 191, 1),
                  )),
                  Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 72,
                  margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                  color: Color.fromRGBO(206, 203, 191, 1),
                ),
                Expanded(
                  child: Container(
                    width: 72,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    color: Color.fromRGBO(206, 203, 191, 1),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
