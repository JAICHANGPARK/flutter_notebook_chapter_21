import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_21/ep1247_art_exhibition_app/src/ui/art_exhibition_start_page.dart';


class ArtExhibitionApp extends StatelessWidget {
  const ArtExhibitionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArtExhibitonStartPage(),
    );
  }
}
