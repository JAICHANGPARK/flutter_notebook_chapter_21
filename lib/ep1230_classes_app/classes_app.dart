import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1230_classes_app/src/ui/classes_main_page.dart';


class ClassesMobileApp extends StatelessWidget {
  const ClassesMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ClassesMainPage(),
    );
  }
}
