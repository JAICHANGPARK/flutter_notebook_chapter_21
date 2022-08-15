import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1244_skin_care_app/src/ui/skin_care_main_page.dart';


class SkinCareApp extends StatelessWidget {
  const SkinCareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SkinCareMainPage(),
    );
  }
}

