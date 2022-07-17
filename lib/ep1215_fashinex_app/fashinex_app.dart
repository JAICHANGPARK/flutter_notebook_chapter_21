import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1215_fashinex_app/src/ui/fashinex_main_page.dart';

class FashinexApp extends StatelessWidget {
  const FashinexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => FashinexMainPage(),
      },
    );
  }
}
