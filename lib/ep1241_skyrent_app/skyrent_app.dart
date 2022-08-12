import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1241_skyrent_app/src/skyrent_start_page.dart';


class SkylentApp extends StatelessWidget {
  const SkylentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SkyrentStartPage(),
    );
  }
}
